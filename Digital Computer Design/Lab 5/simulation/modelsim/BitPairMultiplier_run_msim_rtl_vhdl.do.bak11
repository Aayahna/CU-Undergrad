transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/18.1/Lab 5/ctrl_fsm.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Lab 5/mux2.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Lab 5/mux5.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Lab 5/FullAdder.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Lab 5/adder.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Lab 5/regA.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Lab 5/regB.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Lab 5/regC.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Lab 5/regD.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Lab 5/bitpair.vhd}

vcom -93 -work work {C:/intelFPGA_lite/18.1/Lab 5/simulation/modelsim/bitpair.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  bitpair_vhd_tst

add wave *
view structure
view signals
run -all
