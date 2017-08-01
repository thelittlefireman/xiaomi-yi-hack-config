#GENERADO POR YI Control Script BY JOERCHA 5.0.4 Sun Jul 30 22:58:06 GMT+02:00 2017
#COMIENZO DEL SCRIPT FIRMWARE: Z2*L 1.5.6

# 4GB Clipping
writew 0xC03AB5A8 0x2004

#default 2560x1440 30fps
#writeb 0xC06D4426 0x02
#default 1920*1080 60fps
writeb 0xC06D4426 0x03
#2.3K to 2.5k
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

#waffleV8.2 standard color without FOV
#--Sharpness Adjustments--
# Coring
t is2 -shp mode 0
t is2 -shp max_change 5 5
t is2 -shp cor d:\coring.txt
sleep 1
# Noise adjust 
#t ia2 -adj tidx -1 1024 -1
t ia2 -adj tidx -1 1200 -1

#--Junk file deletion--
# Delete Junk Video Files on Startup (Widened version)
rm \DCIM\100MEDIA\*thm.mp4
rm \DCIM\101MEDIA\*thm.mp4
rm \DCIM\102MEDIA\*thm.mp4
rm \DCIM\103MEDIA\*thm.mp4
rm \DCIM\104MEDIA\*thm.mp4
rm \DCIM\105MEDIA\*thm.mp4
rm \DCIM\106MEDIA\*thm.mp4
rm \DCIM\107MEDIA\*thm.mp4
rm \DCIM\108MEDIA\*thm.mp4
rm \DCIM\109MEDIA\*thm.mp4
rm \DCIM\110MEDIA\*thm.mp4
rm \DCIM\111MEDIA\*thm.mp4
rm \DCIM\112MEDIA\*thm.mp4
rm \DCIM\113MEDIA\*thm.mp4
rm \DCIM\114MEDIA\*thm.mp4
rm \DCIM\115MEDIA\*thm.mp4
rm \DCIM\116MEDIA\*thm.mp4
rm \DCIM\117MEDIA\*thm.mp4
rm \DCIM\118MEDIA\*thm.mp4
rm \DCIM\119MEDIA\*thm.mp4
rm \DCIM\120MEDIA\*thm.mp4
rm \DCIM\121MEDIA\*thm.mp4
rm \DCIM\122MEDIA\*thm.mp4
rm \DCIM\123MEDIA\*thm.mp4
rm \DCIM\124MEDIA\*thm.mp4
rm \DCIM\125MEDIA\*thm.mp4
rm \DCIM\126MEDIA\*thm.mp4
rm \DCIM\127MEDIA\*thm.mp4
rm \DCIM\128MEDIA\*thm.mp4
rm \DCIM\129MEDIA\*thm.mp4
rm \DCIM\130MEDIA\*thm.mp4
# Delete App Thumbnails on Startup (Widened version)
rm \DCIM\100MEDIA\*.thm
rm \DCIM\101MEDIA\*.thm
rm \DCIM\102MEDIA\*.thm
rm \DCIM\103MEDIA\*.thm
rm \DCIM\104MEDIA\*.thm
rm \DCIM\105MEDIA\*.thm
rm \DCIM\106MEDIA\*.thm
rm \DCIM\107MEDIA\*.thm
rm \DCIM\108MEDIA\*.thm
rm \DCIM\109MEDIA\*.thm
rm \DCIM\110MEDIA\*.thm
rm \DCIM\111MEDIA\*.thm
rm \DCIM\112MEDIA\*.thm
rm \DCIM\113MEDIA\*.thm
rm \DCIM\114MEDIA\*.thm
rm \DCIM\115MEDIA\*.thm
rm \DCIM\116MEDIA\*.thm
rm \DCIM\117MEDIA\*.thm
rm \DCIM\118MEDIA\*.thm
rm \DCIM\119MEDIA\*.thm
rm \DCIM\120MEDIA\*.thm
rm \DCIM\121MEDIA\*.thm
rm \DCIM\122MEDIA\*.thm
rm \DCIM\123MEDIA\*.thm
rm \DCIM\124MEDIA\*.thm
rm \DCIM\125MEDIA\*.thm
rm \DCIM\126MEDIA\*.thm
rm \DCIM\127MEDIA\*.thm
rm \DCIM\128MEDIA\*.thm
rm \DCIM\129MEDIA\*.thm
rm \DCIM\130MEDIA\*.thm

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
#
#Main loop:
while true; do
	#Enable AE/AWB/ADJ:
	t ia2 -3a 1 1 0 1
	sleep 1
	#Load settings from file:
	t cal -ituner load d:\goprawn.conf
done

