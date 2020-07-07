#/bin/bash

# baseline params:
# key: 16 byte
# value: 100 byte
# write_buffer_size(default): 4M
# block_cache(default): need change
# compression_ratio:0.5
# num: 10000000

./db_bench --num=10000000 --benchmarks="fillseq,readrandom" --cache_size=$((x*1024*1024))  --use_existing_db=0 --reuse_logs=0 --db=bench_test


# base info
# LevelDB:    version 1.20
# Date:       Tue Jul  7 21:53:47 2020
# CPU:        4 * Intel(R) Core(TM) i5-6300HQ CPU @ 2.30GHz
# CPUCache:   6144 KB
# Keys:       16 bytes each
# Values:     100 bytes each (50 bytes after compression)
# Entries:    10000000
# RawSize:    1106.3 MB (estimated)
# FileSize:   629.4 MB (estimated)
# ------------------------------------------------

## cache_size: 2M
## ssd
# fillseq      :       3.222 micros/op;   34.3 MB/s      
# readrandom   :       9.546 micros/op; (10000000 of 10000000 found)

## hdd
# fillseq      :       7.106 micros/op;   15.6 MB/s      
# readrandom   :       8.877 micros/op; (10000000 of 10000000 found)

## cache_size: 4M
## ssd
# fillseq      :       3.401 micros/op;   32.5 MB/s      
# readrandom   :      10.976 micros/op; (10000000 of 10000000 found)

## hdd
# fillseq      :       7.118 micros/op;   15.5 MB/s      
# readrandom   :       9.383 micros/op; (10000000 of 10000000 found)

## cache_size: 8M
## ssd
# fillseq      :       3.489 micros/op;   31.7 MB/s      
# readrandom   :       9.181 micros/op; (10000000 of 10000000 found)

## hdd
# fillseq      :       7.120 micros/op;   15.5 MB/s      
# readrandom   :       9.865 micros/op; (10000000 of 10000000 found)

## cache_size: 16M
## ss
# fillseq      :       3.294 micros/op;   33.6 MB/s      
# readrandom   :       9.497 micros/op; (10000000 of 10000000 found)

## hdd
# fillseq      :       7.211 micros/op;   15.3 MB/s      
# readrandom   :       9.142 micros/op; (10000000 of 10000000 found)

## cache_size: 32M
## ssd
# fillseq      :       3.111 micros/op;   35.6 MB/s      
# readrandom   :       8.958 micros/op; (10000000 of 10000000 found)

## hdd
# fillseq      :       7.360 micros/op;   15.0 MB/s      
# readrandom   :       9.303 micros/op; (10000000 of 10000000 found)

## cache_size: 64M
## ssd
# fillseq      :       3.450 micros/op;   32.1 MB/s      
# readrandom   :       8.839 micros/op; (10000000 of 10000000 found)

## hdd
# fillseq      :       7.012 micros/op;   15.8 MB/s      
# readrandom   :       9.172 micros/op; (10000000 of 10000000 found)

## cache_size: 128M
## ssd
# fillseq      :       3.486 micros/op;   31.7 MB/s      
# readrandom   :       9.716 micros/op; (10000000 of 10000000 found)

## hdd
# fillseq      :       7.236 micros/op;   15.3 MB/s      
# readrandom   :       8.804 micros/op; (10000000 of 10000000 found)

## cache_size: 256M
## ssd
# fillseq      :       3.305 micros/op;   33.5 MB/s      
# readrandom   :       8.159 micros/op; (10000000 of 10000000 found)

## hdd
# fillseq      :       7.013 micros/op;   15.8 MB/s      
# readrandom   :       8.305 micros/op; (10000000 of 10000000 found)

## cache_size: 512M
## ssd
# fillseq      :       3.450 micros/op;   32.1 MB/s      
# readrandom   :       6.363 micros/op; (10000000 of 10000000 found)

## hdd
# fillseq      :       7.011 micros/op;   15.8 MB/s      
# readrandom   :       6.147 micros/op; (10000000 of 10000000 found)

## cache_size: 768M
## ssd
# fillseq      :       3.403 micros/op;   32.5 MB/s      
# readrandom   :       4.884 micros/op; (10000000 of 10000000 found)

## hdd
# fillseq      :       6.991 micros/op;   15.8 MB/s      
# readrandom   :       4.428 micros/op; (10000000 of 10000000 found)




