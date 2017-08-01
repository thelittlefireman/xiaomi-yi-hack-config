#YiMAX 1080p60 script by nutsey for Z22L/23L/25L Yi cams with 1.5.6 firmware.
#
#Make sure 'goprawn.conf' file is also at the root of your memory card.
#
#Check goprawn.com website for the latest updates and discussions.
#
#Set 1080p60 video mode, ABR, 40Mbps, .75 - 1.25 bitrate range:
writeb 0xC06D4426 0x03
writeb 0xC05C8EDC 0x05
writew 0xC05C8EE2 0x4220
writel 0xC05C8EB4 0x3f400000
writel 0xC05C8EB8 0x3fa00000
#
#Set file size limit to 4GB:
writew 0xC03AB5A8 0x2004
#
sleep 9
#
#HSV, shadow/highlight clipping, gamma, NR adjustments:
t ia2 -adj ev 10 -1 70 -1 -1 150 -1
t ia2 -adj l_expo 163
t ia2 -adj autoknee 255
t ia2 -adj gamma 160
t ia2 -adj tidx -1 1200 -1
#
#Set 9 scene mode:
t cal -sc 9
#
#Enable raw+jpeg stills:
t app test debug_dump 14
#
#Ready beep:
t pwm 1 enable
sleep 1
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
