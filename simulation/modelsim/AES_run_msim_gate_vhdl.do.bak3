transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {AES.vho}

vcom -93 -work work {C:/Designs/AES-128/tb_AES.vhd}

vsim -t 1ps -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  tb_AES

source AES_dump_all_vcd_nodes.tcl
add wave *
view structure
view signals
run 5000 ns
