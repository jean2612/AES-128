onerror {quit -f}
vlib work
vlog -work work AES.vo
vlog -work work AES.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MixColumn_vlg_vec_tst
vcd file -direction AES.msim.vcd
vcd add -internal MixColumn_vlg_vec_tst/*
vcd add -internal MixColumn_vlg_vec_tst/i1/*
add wave /*
run -all
