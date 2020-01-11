transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/18.1/Lab 3/fuel_machine.vhd}

vcom -93 -work work {C:/intelFPGA_lite/18.1/Lab 3/simulation/modelsim/fuel_machine.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  fuel_machine_vhd_tst

add wave *
view structure
view signals
run -all
