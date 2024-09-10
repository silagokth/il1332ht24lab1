# open list_of_files.txt
set fp [open "list_of_files.txt" r]
set files [split [read $fp] "\n"]
close $fp
foreach file $files {
	vlog -sv $file
}
vlog -sv ./tb/cla_8bit_tb.svp

vsim work.cla_8bit_tb

add wave /*

run -all

