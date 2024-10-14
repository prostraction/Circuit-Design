onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /mealy/set
add wave -noupdate /mealy/clk
add wave -noupdate /mealy/x
add wave -noupdate /mealy/s
add wave -noupdate /mealy/NEXT_s
add wave -noupdate /mealy/y
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {197778 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 139
configure wave -valuecolwidth 38
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {396727 ps}
