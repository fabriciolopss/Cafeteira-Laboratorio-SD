transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/altera/13.0sp1/Trabalho Final/Componentes/Seletor/seletor.vhd}
vcom -93 -work work {C:/altera/13.0sp1/Trabalho Final/Componentes/subtrator_troco/subtrator_troco.vhd}
vcom -93 -work work {C:/altera/13.0sp1/Trabalho Final/Componentes/somador_dinheiro/somador_dinheiro.vhd}
vcom -93 -work work {C:/altera/13.0sp1/Trabalho Final/Componentes/reg_dinheiro/reg_dinheiro.vhd}
vcom -93 -work work {C:/altera/13.0sp1/Trabalho Final/Componentes/mux_troco/mux_troco.vhd}
vcom -93 -work work {C:/altera/13.0sp1/Trabalho Final/Componentes/decod_bebida/decod_bebida.vhd}
vcom -93 -work work {C:/altera/13.0sp1/Trabalho Final/Componentes/comparador_troco/comparador_troco.vhd}
vcom -93 -work work {C:/altera/13.0sp1/Trabalho Final/Controladora/controladora.vhd}
vcom -93 -work work {C:/altera/13.0sp1/Trabalho Final/Caminho de Dados/MaquinaDeCafe.vhd}
vcom -93 -work work {C:/altera/13.0sp1/Trabalho Final/Sinalizadora/sinalizadora.vhd}

vcom -93 -work work {C:/altera/13.0sp1/Trabalho Final/Sinalizadora/tb_Sinalizadora.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_Sinalizadora

add wave *
view structure
view signals
run -all
