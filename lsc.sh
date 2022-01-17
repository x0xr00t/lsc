#!/bin/bash
#
# lsc is a Linux screen size changer, this is based on cvt info input.
# lsc uses randr to perform the size change.
# Author  : p.hoogeveen 
# Build    : -------  
# Name   : Linux-screen-changer.
echo ""
echo ""
echo ""
echo " {!}++++++++Sl0ppyr00t++++++++{!}"
echo " {I} LSC Linux Screen Changer {!}"
echo " {!}++++++++Sl0ppyr00t++++++++{!}"
echo ""
echo ""
echo " Desired size example 1600 1200 60.00"
read -p " {USER_INPUT} Please Enter The Desired Size. : " cvt
echo ""
echo ""
echo ""
read -p " {USER_INPUT} Please Enter the Screen to apply change on : " cvts
echo ""
echo ""
echo ""
read -p " {USER_CONFIRMATION} Are U Sure This Is The Correct Size ? : " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    cvt $cvt
    echo ""
    read -p " {USER_INPUT} Enter The CVT Line : " cvtl
    read -p " {USER_INPUR} Enter The ModeName : " cvtm
    read -p " {USER_INPUT} Enter The ModeName Without the "" : " cvtmm
    xrandr --newmode $cvtl
    xrandr --addmode $cvts $cvtm
    echo ""
    echo ""
    echo " {Sl0ppyr00t} Is set to change ur screen"
    sleep 5
    echo "Sl0ppy Changing screen."
    xrandr --output $cvts --mode $cvtmm
fi
# personal static settings
#xrandr --newmode "1600x1200_50.00"  131.50  1600 1696 1864 2128  1200 1203 1207 1238 -hsync +vsync
#xrandr --addmode VGA-1 "1600x1200_50.00"
#xrandr --output VGA-1 --mode 1600x1200_50.00
