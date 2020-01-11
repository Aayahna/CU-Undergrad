unsigned short comparator(unsigned int data_in){
	unsigned short a = data_in & 0x0000FFFF;
	unsigned short b = (data_in >> 16) & 0x0000FFFF;

	if(a == b)
		result = 0;
	else result = 0;

	return result;	
}
