onerror {quit -f}
vlib work
vlog -work work MUX.vo
vlog -work work MUX.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MUX_vlg_vec_tst
vcd file -direction MUX.msim.vcd
vcd add -internal MUX_vlg_vec_tst/*
vcd add -internal MUX_vlg_vec_tst/i1/*
add wave /*
run -all
