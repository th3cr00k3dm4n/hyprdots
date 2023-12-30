#!/bin/env bash

TOFICONFIG="$HOME/.config/tofi/config"
#MAKOCONFIG="/tmp/config"
COLORS="$HOME/.cache/wal/colors"

COLOR0=`head -1 $COLORS`
COLOR1=`head -2 $COLORS | tail -1`
COLOR2=`head -3 $COLORS | tail -1`
COLOR3=`head -4 $COLORS | tail -1`
COLOR4=`head -5 $COLORS | tail -1`
COLOR5=`head -6 $COLORS | tail -1`
COLOR6=`head -7 $COLORS | tail -1`

cat << EOF > $TOFICONFIG
hide-cursor=true
corner-radius= 15
width = 20%
height = 20%
border-width = 0
border- = 0
outline-width = 0
padding = 2%
result-spacing = 5
num-results = 5
prompt-text =󰣇 
prompt-padding= 5
background-color = $COLOR7
text-color= $COLOR2
prompt-color= $COLOR3
input-color= $COLOR4
selection-color= $COLOR5
EOF
