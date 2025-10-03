all:
	g++ -o add_0_cpu add_0_cpu.cpp -g
	nvcc -o add_1_cuda add_1_cuda.cu -g
	nvcc -o add_2_threaded add_2_threaded.cu -g
	nvcc -o add_3_blk add_3_blk.cu -g
clean:
	rm -f add_0_cpu
	rm -f add_1_cuda
	rm -f add_2_threaded
	rm -f add_3_blk
