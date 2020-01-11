transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/18.1/Full Adder/FullAdder.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Lab 4/regN.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Lab 4/multiplexer.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Lab 4/controlFSM.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Lab 4/RCAN.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Lab 4/Processor.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Lab 4/AddSub.vhd}

vcom -93 -work work {C:/intelFPGA_lite/18.1/Lab 4/simulation/modelsim/processor.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  processor_vhd_tst

add wave *
view structure
view signals
run -all
