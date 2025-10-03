# CUDA Learning Progression

Progressive CUDA implementations showing CPU to GPU parallelization.

## What it does

Four implementations of vector addition (1M elements):
- `add_0_cpu.cpp` - Baseline CPU implementation
- `add_1_cuda.cu` - Naive GPU kernel (single thread)
- `add_2_threaded.cu` - Multi-threaded (256 threads, 1 block)
- `add_3_blk.cu` - Full parallelization (multiple blocks + threads)

Includes timing script to compare performance.

## Technical details

- Unified memory for CPU/GPU communication
- Progressive understanding of threadIdx, blockIdx, blockDim, gridDim
- Proper launch geometry calculation
- Performance measurement across implementations

## Build & Run
```bash
make
./runall.sh
```

## Why I built this 
Wanted to understand CUDA fundamentals by building from CPU baseline through GPU parallelization strategies. Learning by doing.
