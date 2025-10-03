#!/bin/bash

executables=("add_0_cpu" "add_1_cuda" "add_2_threaded" "add_3_blk")

for exe in "${executables[@]}"; do
	if [[ -x "$exe" ]]; then
		echo "Running $exe..."
		time ./"$exe"
	else
		echo "Executable $exe not found"
	fi
	echo 
done
