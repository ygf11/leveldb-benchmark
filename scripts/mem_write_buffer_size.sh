#/bin/bash

# baseline params:
# key: 16 byte
# value: 100 byte
# write_buffer_size(default): need change
# block_cache(default): 2M
# compression_ratio:0.5
# num: 10000000

./db_bench --num=10000000 --benchmarks="fillseq,fillrandom,readrandom" --write_buffer_size=$((x*1024*1024))  --use_existing_db=0 --reuse_logs=0 --db=bench_test


# base info
# LevelDB:    version 1.20
# Date:       Sat Jun 27 15:33:10 2020
# CPU:        4 * Intel(R) Core(TM) i5-6300HQ CPU @ 2.30GHz
# CPUCache:   6144 KB
# Keys:       16 bytes each
#Values:     100 bytes each (50 bytes after compression)
# Entries:    10000000
# RawSize:    1106.3 MB (estimated)
# FileSize:   629.4 MB (estimated)
# WARNING: Snappy compression is not enabled


# write buffer size: 2M
## ssd
# fillseq      :       2.776 micros/op;   39.8 MB/s      
# fillrandom   :      17.413 micros/op;    6.4 MB/s      
# readrandom   :       4.081 micros/op; (10000000 of 10000000 found)

## hd
# fillseq      :      11.184 micros/op;    9.9 MB/s      
# fillrandom   :      49.307 micros/op;    2.2 MB/s      
# readrandom   :       6.175 micros/op; (10000000 of 10000000 found)

# write buffer size: 4M
## ssd
# fillseq      :       2.746 micros/op;   40.3 MB/s      
# fillrandom   :      15.521 micros/op;    7.1 MB/s      
# readrandom   :       4.239 micros/op; (10000000 of 10000000 found)

## hd
# fillseq      :       6.508 micros/op;   17.0 MB/s      
# fillrandom   :      37.824 micros/op;    2.9 MB/s      
# readrandom   :       6.158 micros/op; (10000000 of 10000000 found)

# write buffer size: 8M
## ssd
# fillseq      :       2.659 micros/op;   41.6 MB/s      
# fillrandom   :       7.871 micros/op;   14.1 MB/s      
# readrandom   :       4.389 micros/op; (10000000 of 10000000 found)

## hd
# fillseq      :       3.792 micros/op;   29.2 MB/s      
# fillrandom   :      28.685 micros/op;    3.9 MB/s      
# readrandom   :       4.783 micros/op; (10000000 of 10000000 found)

# write buffer size: 16M
## ssd
# fillseq      :       2.721 micros/op;   40.7 MB/s      
# fillrandom   :       6.472 micros/op;   17.1 MB/s      
# readrandom   :       5.311 micros/op; (10000000 of 10000000 found)

## hd
# fillseq      :       2.502 micros/op;   44.2 MB/s      
# fillrandom   :      24.626 micros/op;    4.5 MB/s      
# readrandom   :       7.323 micros/op; (10000000 of 10000000 found)

# write buffer size: 32M
## ssd
# fillseq      :       2.873 micros/op;   38.5 MB/s      
# fillrandom   :       5.213 micros/op;   21.2 MB/s      
# readrandom   :       5.376 micros/op; (10000000 of 10000000 found)

## hd
# fillseq      :       2.222 micros/op;   49.8 MB/s      
# fillrandom   :      15.275 micros/op;    7.2 MB/s      
# readrandom   :       7.217 micros/op; (10000000 of 10000000 found)

# write buffer size: 64M
## ssd
# fillseq      :       2.900 micros/op;   38.2 MB/s      
# fillrandom   :       4.970 micros/op;   22.3 MB/s      
# readrandom   :       5.455 micros/op; (10000000 of 10000000 found)

## hd
# fillseq      :       2.194 micros/op;   50.4 MB/s      
# fillrandom   :      12.548 micros/op;    8.8 MB/s      
# readrandom   :       5.714 micros/op; (10000000 of 10000000 found)

# write buffer size: 128M
## ssd
# fillseq      :       2.800 micros/op;   39.5 MB/s      
# fillrandom   :       5.290 micros/op;   20.9 MB/s      
# readrandom   :       5.203 micros/op; (10000000 of 10000000 found)

## hd
# fillseq      :       2.221 micros/op;   49.8 MB/s      
# fillrandom   :       4.291 micros/op;   25.8 MB/s      
# readrandom   :       7.282 micros/op; (10000000 of 10000000 found)

# write buffer size: 256M
## ssd
# fillseq      :       2.831 micros/op;   39.1 MB/s      
# fillrandom   :       5.516 micros/op;   20.1 MB/s      
# readrandom   :       6.345 micros/op; (10000000 of 10000000 found)

## hd
# fillseq      :       2.371 micros/op;   46.7 MB/s      
# fillrandom   :       4.737 micros/op;   23.4 MB/s      
# readrandom   :       5.829 micros/op; (10000000 of 10000000 found)

# write buffer size: 512M
## ssd
# fillseq      :       3.003 micros/op;   36.8 MB/s      
# fillrandom   :       6.143 micros/op;   18.0 MB/s      
# readrandom   :       5.523 micros/op; (10000000 of 10000000 found)

## hd
# fillseq      :       2.387 micros/op;   46.3 MB/s      
# fillrandom   :       5.175 micros/op;   21.4 MB/s      
# readrandom   :       5.518 micros/op; (10000000 of 10000000 found)
