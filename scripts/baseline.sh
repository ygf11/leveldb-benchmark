#/bin/bash


# baseline params:
# key: 16 byte
# value: 100 byte
# write_buffer_size(default): 4M
# block_cache(default): 2M
# compression_ratio:0.5
# num: 10000000

./db_bench --num=10000000 --benchmarks="fillseq,fillrandom,readrandom"  --use_existing_db=0 --reuse_logs=0 --db=bench_test


## ssd-result
# LevelDB:    version 1.20
# Date:       Fri Jun 26 22:44:23 2020
# CPU:        4 * Intel(R) Core(TM) i5-6300HQ CPU @ 2.30GHz
# CPUCache:   6144 KB
# Keys:       16 bytes each
# Values:     100 bytes each (50 bytes after compression)
# Entries:    10000000
# RawSize:    1106.3 MB (estimated)
# FileSize:   629.4 MB (estimated)
# WARNING: Snappy compression is not enabled
# ------------------------------------------------
# fillseq      :       2.660 micros/op;   41.6 MB/s      
# fillrandom   :      14.395 micros/op;    7.7 MB/s      
# readrandom   :       5.420 micros/op; (10000000 of 10000000 found)


## hdd-result
## LevelDB:    version 1.20
## Date:       Fri Jun 26 22:42:36 2020
## CPU:        4 * Intel(R) Core(TM) i5-6300HQ CPU @ 2.30GHz
## CPUCache:   6144 KB
## Keys:       16 bytes each
## Values:     100 bytes each (50 bytes after compression)
## Entries:    1000000
## RawSize:    110.6 MB (estimated)
## FileSize:   62.9 MB (estimated)
## WARNING: Snappy compression is not enabled
## ------------------------------------------------
## fillseq      :       5.381 micros/op;   20.6 MB/s     
## fillrandom   :      15.224 micros/op;    7.3 MB/s     
## readrandom   :       6.542 micros/op; (1000000 of 1000000 found)
