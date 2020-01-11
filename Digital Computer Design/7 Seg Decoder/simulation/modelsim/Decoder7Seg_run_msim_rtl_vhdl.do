transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/18.1/7 Seg Decoder/Decoder7Seg.vhd}

vcom -93 -work work {C:/intelFPGA_lite/18.1/7 Seg Decoder/simulation/modelsim/Decoder7Seg.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  Decoder7Seg_vhd_tst

add wave *
view structure
view signals
run -all
