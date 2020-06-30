#/bin/bash

# baseline params:
# key: 16 byte
# value: 100 byte
# write_buffer_size(default): 4M
# block_cache(default): need change
# compression_ratio:0.5
# num: 10000000

./db_bench --num=10000000 --benchmarks="fillseq,fillseq,readrandom" --cache_size=$((x*1024*1024))  --use_existing_db=0 --reuse_logs=0 --db=bench_test


# base info
# LevelDB:    version 1.20
# Date:       Tue Jun 30 22:51:11 2020
# CPU:        4 * Intel(R) Core(TM) i5-6300HQ CPU @ 2.30GHz
# CPUCache:   6144 KB
# Keys:       16 bytes each
# Values:     100 bytes each (50 bytes after compression)
# Entries:    10000000
# RawSize:    1106.3 MB (estimated)
# FileSize:   629.4 MB (estimated)
# WARNING: Snappy compression is not enabled
# ------------------------------------------------

## cache_size: 0M
## ssd
# fillseq      :       2.894 micros/op;   38.2 MB/s      
# readseq      :       0.323 micros/op;  342.0 MB/s      
# readrandom   :       2.393 micros/op; (10000000 of 10000000 found)

## hdd
# fillseq      :       6.438 micros/op;   17.2 MB/s      
# readseq      :       0.163 micros/op;  679.7 MB/s      
# readrandom   :       2.241 micros/op; (10000000 of 10000000 found)

## cache_size: 2M
## ssd
## fillseq      :       2.855 micros/op;   38.8 MB/s      
## readseq      :       0.308 micros/op;  359.0 MB/s      
## readrandom   :       2.624 micros/op; (10000000 of 10000000 found)

## hdd
# fillseq      :       6.345 micros/op;   17.4 MB/s      
# readseq      :       0.159 micros/op;  694.1 MB/s      
# readrandom   :       2.200 micros/op; (10000000 of 10000000 found)

## cache_size: 4M
## ssd
# fillseq      :       2.982 micros/op;   37.1 MB/s      
# readseq      :       0.187 micros/op;  592.3 MB/s      
# readrandom   :       2.464 micros/op; (10000000 of 10000000 found)

## hdd
# fillseq      :       6.466 micros/op;   17.1 MB/s      
# readseq      :       0.170 micros/op;  650.2 MB/s      
# readrandom   :       2.234 micros/op; (10000000 of 10000000 found)

## cache_size: 8M
## ssd
# fillseq      :       2.978 micros/op;   37.1 MB/s      
# readseq      :       0.156 micros/op;  707.8 MB/s      
# readrandom   :       2.491 micros/op; (10000000 of 10000000 found)

## hdd
# fillseq      :       6.472 micros/op;   17.1 MB/s      
# readseq      :       0.171 micros/op;  645.6 MB/s      
# readrandom   :       2.297 micros/op; (10000000 of 10000000 found)

## cache_size: 16M
## ssd
# fillseq      :       2.907 micros/op;   38.1 MB/s      
# readseq      :       0.188 micros/op;  589.5 MB/s      
# readrandom   :       2.723 micros/op; (10000000 of 10000000 found)

## hdd
# fillseq      :       6.546 micros/op;   16.9 MB/s      
# readseq      :       0.153 micros/op;  722.9 MB/s      
# readrandom   :       2.189 micros/op; (10000000 of 10000000 found)

## cache_size: 32M
## ssd
# fillseq      :       2.846 micros/op;   38.9 MB/s      
# readseq      :       0.169 micros/op;  655.0 MB/s      
# readrandom   :       2.701 micros/op; (10000000 of 10000000 found)

## hdd
# fillseq      :       6.327 micros/op;   17.5 MB/s      
# readseq      :       0.162 micros/op;  681.2 MB/s      
# readrandom   :       2.173 micros/op; (10000000 of 10000000 found)

## cache_size: 64M
## ssd
# fillseq      :       2.992 micros/op;   37.0 MB/s      
# readseq      :       0.184 micros/op;  600.4 MB/s      
# readrandom   :       2.680 micros/op; (10000000 of 10000000 found)

## hdd
# fillseq      :       6.468 micros/op;   17.1 MB/s      
# readseq      :       0.159 micros/op;  697.3 MB/s      
# readrandom   :       2.238 micros/op; (10000000 of 10000000 found)

## cache_size: 128M
## ssd
# fillseq      :       3.001 micros/op;   36.9 MB/s      
# readseq      :       0.160 micros/op;  693.4 MB/s      
# readrandom   :       2.504 micros/op; (10000000 of 10000000 found)

## hdd
# fillseq      :       6.486 micros/op;   17.1 MB/s      
# readseq      :       0.154 micros/op;  719.8 MB/s      
# readrandom   :       2.228 micros/op; (10000000 of 10000000 found)

## cache_size: 256M
## ssd
# fillseq      :       2.991 micros/op;   37.0 MB/s      
# readseq      :       0.182 micros/op;  609.3 MB/s      
# readrandom   :       2.767 micros/op; (10000000 of 10000000 found)

## hdd
# fillseq      :       6.442 micros/op;   17.2 MB/s      
# readseq      :       0.171 micros/op;  645.8 MB/s      
# readrandom   :       2.632 micros/op; (10000000 of 10000000 found)

## cache_size: 512M
## ssd
# fillseq      :       3.039 micros/op;   36.4 MB/s      
# readseq      :       0.182 micros/op;  608.4 MB/s      
# readrandom   :       2.636 micros/op; (10000000 of 10000000 found)

## hdd
# fillseq      :       6.380 micros/op;   17.3 MB/s      
# readseq      :       0.179 micros/op;  616.4 MB/s      
# readrandom   :       2.520 micros/op; (10000000 of 10000000 found)

## cache_size: 768M
## ssd
# fillseq      :       2.895 micros/op;   38.2 MB/s      
# readseq      :       0.172 micros/op;  645.0 MB/s      
# readrandom   :       2.643 micros/op; (10000000 of 10000000 found)

## hdd
# fillseq      :       6.344 micros/op;   17.4 MB/s      
# readseq      :       0.171 micros/op;  648.0 MB/s      
# readrandom   :       2.503 micros/op; (10000000 of 10000000 found)




