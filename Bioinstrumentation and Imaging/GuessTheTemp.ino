#include <LiquidCrystal.h>
#include <Wire.h> // Used to establied serial communication on the I2C bus
#include "SparkFunTMP102.h" // Used to send and recieve specific information from our sensor


/*  Initializations for the temperature sensor */

// Connections
// VCC = 3.3V
// GND = GND
// SDA = A4
// SCL = A5
const int ALERT_PIN = A3;

TMP102 sensor0(0x48); // Initialize sensor at I2C address 0x48
// Sensor address can be changed with an external jumper to:
// ADD0 - Address
//  VCC - 0x49
//  SDA - 0x4A
//  SCL - 0x4B

/* Initializations for the Game */
#define attempts 3

int user_temp = 50;
int real_temp;
int buttonDelay = 30;
int tries = attempts;

/* Intializations for the LCD Keypad */

// Select the pin used on LCD
LiquidCrystal lcd(8, 9, 4, 5, 6, 7);

// define the button
int lcd_key     = 0;
int adc_key_in  = 0;

#define btnRIGHT  0
#define btnUP     1
#define btnDOWN   2
#define btnLEFT   3
#define btnSELECT 4
#define btnNONE   5

//read the button value
int read_LCD_buttons()
{
 adc_key_in = analogRead(0);          // read analog A0 value 
 // when read the 5 key values in the vicinity of the following：0,144,329,504,741
 // By setting different threshold, you can read the one button
 if (adc_key_in > 1000) return btnNONE; 
 if (adc_key_in < 50)   return btnRIGHT;  
 if (adc_key_in < 250)  return btnUP; 
 if (adc_key_in < 450)  return btnDOWN; 
 if (adc_key_in < 650)  return btnLEFT; 
 if (adc_key_in < 850)  return btnSELECT;  
 
 return btnNONE; 
}

void setup()
{
  Serial.begin(9600); // Start serial communication at 9600 baud
  pinMode(ALERT_PIN,INPUT);  // Declare alertPin as an input
  sensor0.begin();  // Join I2C bus

  // Initialize sensor0 settings
  // These settings are saved in the sensor, even if it loses power
  
  // set the number of consecutive faults before triggering alarm.
  // 0-3: 0:1 fault, 1:2 faults, 2:4 faults, 3:6 faults.
  sensor0.setFault(0);  // Trigger alarm immediately
  
  // set the polarity of the Alarm. (0:Active LOW, 1:Active HIGH).
  sensor0.setAlertPolarity(1); // Active HIGH
  
  // set the sensor in Comparator Mode (0) or Interrupt Mode (1).
  sensor0.setAlertMode(0); // Comparator Mode.
  
  // set the Conversion Rate (how quickly the sensor gets a new reading)
  //0-3: 0:0.25Hz, 1:1Hz, 2:4Hz, 3:8Hz
  sensor0.setConversionRate(2);
  
  //set Extended Mode.
  //0:12-bit Temperature(-55C to +128C) 1:13-bit Temperature(-55C to +150C)
  sensor0.setExtendedMode(0);

  //set T_HIGH, the upper limit to trigger the alert on
  sensor0.setHighTempF(85.0);  // set T_HIGH in F
  //sensor0.setHighTempC(29.4); // set T_HIGH in C
  
  //set T_LOW, the lower limit to shut turn off the alert
  sensor0.setLowTempF(84.0);  // set T_LOW in F
  //sensor0.setLowTempC(26.67); // set T_LOW in C


  lcd.begin(16, 2);              // start
}
 
void loop()
{
  float temperature;
  boolean alertPinState, alertRegisterState;
  
  // Turn sensor on to start temperature measurement.
  // Current consumtion typically ~10uA.
  sensor0.wakeup();

  // read temperature data
  temperature = sensor0.readTempF();
  //temperature = sensor0.readTempC();

  // Check for Alert
  alertPinState = digitalRead(ALERT_PIN); // read the Alert from pin
  alertRegisterState = sensor0.alert();   // read the Alert from register
  
  // Place sensor in sleep mode to save power.
  // Current consumtion typically <0.5uA.
  sensor0.sleep();

  // Print temperature and alarm state
  Serial.print("Temperature: ");
  Serial.print(temperature);
  
  Serial.print("\tAlert Pin: ");
  Serial.print(alertPinState);
  
  Serial.print("\tAlert Register: ");
  Serial.println(alertRegisterState);
  
  delay(500);  // Wait 1000ms

  
  lcd.setCursor(0,1);            // The cursor moves to the beginning of the second line.
  lcd.print("Your Guess: ");
  lcd.setCursor(12,1);
  lcd.print(user_temp);
  lcd_key = read_LCD_buttons();  // read key

 switch (lcd_key)               // display key
 {
   case btnRIGHT:
     {
      real_temp = (int)temperature;
      tries = attempts;
      lcd.setCursor(0,0);
      lcd.print("Temperature Set");
      delay(2000);
      lcd.clear();
      
      break;
     }
     
   case btnLEFT:
     {
      /* Not doing sh*t */
    
      break;
     }
     
   case btnUP:
     {
        if (user_temp >= 100) {}
        else
        {
          lcd.clear();
          user_temp++;
        }
      
      break;
     }
     
   case btnDOWN:
     {
        if (user_temp <= 0) {}
        else
        {
          lcd.clear();
          user_temp--;
        }
      
      break;
     }
     
   case btnSELECT:
     {
      lcd.clear();
      lcd.setCursor(5,0);
      lcd.print("Hmm...");
      delay(800);

      tries--;
      if (user_temp < (real_temp - 2))
      {
        lcd.setCursor(0,0);
        lcd.print("Temperature is");
        lcd.setCursor(0,1);
        lcd.print("higher!");
        delay(2000);
      }
      else if (user_temp > (real_temp + 2))
      {
        lcd.setCursor(0,0);
        lcd.print("Temperature is");
        lcd.setCursor(0,1);
        lcd.print("lower!");
        delay(2000);
      }
      else
      {
        lcd.clear();
        lcd.setCursor(3,0);
        lcd.print("Good Job!!!");
        lcd.setCursor(7,1);
        lcd.print(":)");
        delay(3000);
        lcd.clear();
        lcd.setCursor(2,0);
        lcd.print("Play Again?");
        lcd.setCursor(1,1);
        lcd.print("RIGHT to Reset");
        delay(2000);
      }

      if (tries == 0)
      {
        lcd.clear();
        lcd.setCursor(6,0);
        lcd.print("GAME");
        lcd.setCursor(6,1);
        lcd.print("OVER");
        delay(2000);

        lcd.clear();
        lcd.setCursor(0,0);
        lcd.print("Temperature was:");
        lcd.setCursor(0,1);
        lcd.print(real_temp);
        delay(3000);
        
        lcd.clear();
        lcd.setCursor(2,0);
        lcd.print("Play Again?");
        lcd.setCursor(1,1);
        lcd.print("RIGHT to Reset");
        delay(5000);
        lcd.clear();
      }
      else
      {
        lcd.clear();
        lcd.setCursor(0,0);
        lcd.print("You only have");
        lcd.setCursor(14,0);
        lcd.print(tries);
        lcd.setCursor(0,1);
        lcd.print("guess(es) left...");
        delay(2000);
        lcd.clear();
      }
      
      
      break;
     }
     
     case btnNONE:
     {
      delay(500);
      break;
     }
 }
}
