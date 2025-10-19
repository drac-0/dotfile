#!/usr/bin/env bash

current=$(hyprctl activeworkspace -j | jq '.id') #worspaces sekarang typeshit

echo $current

if [ $1 = "r" ];then
	next=$((current + 1))
elif [ $1 = "l" ];then
	next=$((current - 1)) 
else
	exit 1

fi

if [ $next -lt 1 ];then
	next=1
fi

hyprctl dispatch workspace "$next"


