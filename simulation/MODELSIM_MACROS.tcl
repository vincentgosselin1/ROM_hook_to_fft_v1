#clear the main window
#.main clear

#vsim work.serializer_v1_vhd_tst
#add wave -position insertpoint sim:/serializer_v1_vhd_tst/i1/*

#add wave

vsim work.rom_hook_to_fft_v1_vhd_tst
add wave -position insertpoint sim:/rom_hook_to_fft_v1_vhd_tst/i1/*

run 100 us
#run 200000 us
wave zoom full
