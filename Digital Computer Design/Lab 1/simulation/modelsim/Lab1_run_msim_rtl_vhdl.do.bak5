transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/18.1/Full Adder/FullAdder.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/4 Bit Ripple Carry Adder/RCA4.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/7 Seg Decoder/Decoder7Seg.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/BCD/BCD.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Lab 1/BCDadder.vhd}

vcom -93 -work work {C:/intelFPGA_lite/18.1/Lab 1/simulation/modelsim/BCDadder.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  BCDadder_vhd_tst

add wave *
view structure
view signals
run -all
