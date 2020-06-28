#/bin/bash


## baseline params:
# key: 16 byte
# value: 100 byte
# write_buffer_size(default): 4M
# block_cache(default): 2M
# compression_ratio:0.5
# num: 1000000

./db_bench --num=1000000 --benchmarks="fillseq,fillrandom"  --use_existing_db=0 --reuse_logs=0 --db=bench_test


## baseline result
# LevelDB:    version 1.20
# Date:       Sun Jun 28 21:22:33 2020
# CPU:        4 * Intel(R) Core(TM) i5-6300HQ CPU @ 2.30GHz
# CPUCache:   6144 KB
# Keys:       16 bytes each
# Values:     100 bytes each (50 bytes after compression)
# Entries:    1000000
# RawSize:    110.6 MB (estimated)
# FileSize:   62.9 MB (estimated)
# WARNING: Snappy compression is not enabled
# ------------------------------------------------
# ssd
# fillseq      :       2.952 micros/op;   37.5 MB/s     
# fillrandom   :       4.565 micros/op;   24.2 MB/s     
# 
# hdd
# fillseq      :       5.099 micros/op;   21.7 MB/s     
# fillrandom   :      14.589 micros/op;    7.6 MB/s


###------------------------------------------------------------------------------------------------###
## large value params:
# key: 16 byte
# value: 10000 byte
# write_buffer_size(default): 4M
# block_cache(default): 2M
# compression_ratio:0.5
# num: 1000000

./db_bench --num=1000000 --benchmarks="fillseq,fillrandom"  --use_existing_db=0 --reuse_logs=0 --db=bench_test

## large value result
# LevelDB:    version 1.20
# Date:       Sun Jun 28 20:44:59 2020
# CPU:        4 * Intel(R) Core(TM) i5-6300HQ CPU @ 2.30GHz
# CPUCache:   6144 KB
# Keys:       16 bytes each
# Values:     10000 bytes each (5000 bytes after compression)
# Entries:    1000000
# RawSize:    9552.0 MB (estimated)
# FileSize:   4783.6 MB (estimated)
# WARNING: Snappy compression is not enabled
# ------------------------------------------------
# ssd
# fillseq      :      91.057 micros/op;  104.9 MB/s     
# fillrandom   :    1682.728 micros/op;    5.7 MB/s     
# hdd
# fillseq      :     459.282 micros/op;   20.8 MB/s     
# fillrandom   :    5009.668 micros/op;    1.9 MB/s
