onerror {quit -f}
vlib work
vlog -work work COD.vo
vlog -work work COD.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.COD_vlg_vec_tst
vcd file -direction COD.msim.vcd
vcd add -internal COD_vlg_vec_tst/*
vcd add -internal COD_vlg_vec_tst/i1/*
add wave /*
run -all
