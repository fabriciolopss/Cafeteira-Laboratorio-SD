transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Hermes/L1-2023/FPS/Trabalho Final/Componentes/mux_troco/mux_troco.vhd}

vcom -93 -work work {C:/Hermes/L1-2023/FPS/Trabalho Final/Componentes/mux_troco/tb_mux_troco.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_mux_troco

add wave *
view structure
view signals
run -all
