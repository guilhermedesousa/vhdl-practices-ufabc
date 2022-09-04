onerror {quit -f}
vlib work
vlog -work work xor_schematic.vo
vlog -work work xor_schematic.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.xor_schematic_vlg_vec_tst
vcd file -direction xor_schematic.msim.vcd
vcd add -internal xor_schematic_vlg_vec_tst/*
vcd add -internal xor_schematic_vlg_vec_tst/i1/*
add wave /*
run -all
