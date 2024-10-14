onerror {exit -code 1}
vlib work
vcom -work work lab1_2.vho
vcom -work work out.vwf.vht
vsim -novopt -c -t 1ps -sdfmax lab1_2_vhd_vec_tst/i1=lab1_2_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.lab1_2_vhd_vec_tst
vcd file -direction lab1_2.msim.vcd
vcd add -internal lab1_2_vhd_vec_tst/*
vcd add -internal lab1_2_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f





