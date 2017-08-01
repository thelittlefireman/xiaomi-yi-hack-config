#GENERADO POR YI Control Script BY JOERCHA 2.0.0 Fri Apr 01 06:59:09 GMT+01:00 2016
#COMIENZO DEL SCRIPT

#shadow/highlight clipping adjustments
#this makes blacks not crushed
#set long exposure level [0~255]
t ia2 -adj l_expo 163
##this gets back the highlights
#set Auto Knee level [0~255]
t ia2 -adj autoknee 255

#create RAW files
t app test debug_dump 14

#SET 4GB File weight limit
#Tamaño max archivo a 4GB
writew 0xC03A8520 0x2004

#set AAA function
#Activar ajuste de blancos# -3a [ae][awb][af][adj]: turn on/off ae/awb/af/adj
#  ae = [0|1], 0:on 1:off AE
#  awb = [0|1], 0:on 1:off AWB
#  af  = [0|1], 0:on 1:off AF
#  adj = [0|1], 0:on 1:off ADJ
t ia2 -3a 1 1 0 1

#set Noise Reduction
# tidx: [ev_idx][nf_idx][shutter_idx], -1 disable  
# [nf_idx]: 0-16383
t ia2 -adj tidx -1 1000 -1

#set gamma level [0~255]
#Configurar nivel gamma [0~255]
t ia2 -adj gamma 220

#2304x1296 30fps
writeb 0xC06CC426 0x02
writel 0xC05C2CB4 0x05100900

#Bitrate a 35Mbs para todas las resoluciones  set 35Mb bitrate for all resolutions
#1280x720 24fps
writew 0xC05C25D2 0x420C
#1280x720 30fps
writew 0xC05C2182 0x420C
#1280x720 48fps
writew 0xC05C25A2 0x420C
#1280x720 60fps
writew 0xC05C2122 0x420C
#1280x720 120fps
writew 0xC05C2812 0x420C
#1280x960 24fps
writew 0xC05C2572 0x420C
#1280x960 30fps
writew 0xC05C22A2 0x420C
#1280x960 48fps
writew 0xC05C2542 0x420C
#1280x960 60fps
writew 0xC05C2272 0x420C
#1600x1200 24fps
writew 0xC05C2512 0x420C
#1600x1200 30fps
writew 0xC05C20C2 0x420C
#1600x1200 48fps
writew 0xC05C24E2 0x420C
#1600x1200 60fps
writew 0xC05C2092 0x420C
#1920x1080 24fps
writew 0xC05C2482 0x420C
#1920x1080 30fps
writew 0xC05C1F72 0x420C
#1920x1080 48fps
writew 0xC05C2452 0x420C
#1920x1080 60fps
writew 0xC05C1EE2 0x420C
#2304x1296 30fps
writew 0xC05C1EB2 0x420C


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

