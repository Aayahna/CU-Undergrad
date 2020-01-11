transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/18.1/Comparator Parts/generic_nand.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Lab 2/Comparator1.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/Lab 2/Comparator16.vhd}

vcom -93 -work work {C:/intelFPGA_lite/18.1/Lab 2/simulation/modelsim/comparator16.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  comparator16_vhd_tst

add wave *
view structure
view signals
run -all
