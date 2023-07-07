transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/altera/13.0sp1/Trabalho Final/subtrator_troco/subtrator_troco.vhd}

vcom -93 -work work {C:/altera/13.0sp1/Trabalho Final/subtrator_troco/tb_subtrator_troco.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_subtrator_troco

add wave *
view structure
view signals
run -all
