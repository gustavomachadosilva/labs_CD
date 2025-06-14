onerror {quit -f}
vlib work
vlog -work work DEC.vo
vlog -work work DEC.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.DEC_vlg_vec_tst
vcd file -direction DEC.msim.vcd
vcd add -internal DEC_vlg_vec_tst/*
vcd add -internal DEC_vlg_vec_tst/i1/*
add wave /*
run -all
