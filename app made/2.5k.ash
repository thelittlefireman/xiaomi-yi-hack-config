#GENERADO POR YI Control Script BY JOERCHA 5.0.4 Sun Jul 30 22:58:06 GMT+02:00 2017
#COMIENZO DEL SCRIPT FIRMWARE: Z2*L 1.5.6

#2560x1440 30fps
writeb 0xC06D4426 0x02
writel 0xC05C9CB4 0x05A00A00

#Bitrate a 40Mbs para todas las resoluciones  set 40Mb bitrate for all resolutions
#1280x720 24fps
writew 0xC05C95D2 0x4220
#1280x720 30fps
writew 0xC05C9182 0x4220
#1280x720 48fps
writew 0xC05C95A2 0x4220
#1280x720 60fps
writew 0xC05C9122 0x4220
#1280x720 120fps
writew 0xC05C9812 0x4220
#1280x960 24fps
writew 0xC05C9572 0x4220
#1280x960 30fps
writew 0xC05C92A2 0x4220
#1280x960 48fps
writew 0xC05C9542 0x4220
#1280x960 60fps
writew 0xC05C9272 0x4220
#1600x1200 24fps
writew 0xC05C9512 0x4220
#1600x1200 30fps
writew 0xC05C90C2 0x4220
#1600x1200 48fps
writew 0xC05C94E2 0x4220
#1600x1200 60fps
writew 0xC05C9092 0x4220
#1920x1080 24fps
writew 0xC05C9482 0x4220
#1920x1080 30fps
writew 0xC05C8F72 0x4220
#1920x1080 48fps
writew 0xC05C9452 0x4220
#1920x1080 60fps
writew 0xC05C8EE2 0x4220
#2304x1296 30fps
writew 0xC05C8EB2 0x4220


#set buzzer volume 1-150
#front led blink

t gpio 6 sw out1 
sleep 1
t gpio 6 sw out0
t gpio 54 sw out1
sleep 1
t gpio 54 sw out0
#short beep & front leds
t gpio 6 sw out1
t gpio 54 sw out0
t pwm 1 enable
sleep 1
t gpio 6 sw out0
t gpio 54 sw out0
t pwm 1 disable

