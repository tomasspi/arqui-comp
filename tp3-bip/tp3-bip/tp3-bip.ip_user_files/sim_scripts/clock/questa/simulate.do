onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib clock_opt

do {wave.do}

view wave
view structure
view signals

do {clock.udo}

run -all

quit -force
