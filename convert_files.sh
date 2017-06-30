#!/usr/bin/env bash


parse_files ()
{
	local mapper="./retroarch-joypad-config-to-cpp-mapper.pl"
	local i=0
	for file in ./retroarch-joypad-autoconfig/udev/*; do
		if (( i == 0 )); then
			$mapper -i "$file" -d 
			i=1
		else
			$mapper -i "$file"
		fi
	done
}

rm -rf ./in_cpp/*
parse_files;
cat ./in_cpp/* > controller_profiles.cpp
