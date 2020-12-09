onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+clock -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.clock xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {clock.udo}

run -all

endsim

quit -force
