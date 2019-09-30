#!/bin/sh
#using 60 threads [10 jobs with 6 threads each]

parallel -j 10 --load 80% --link 'seq2HLA.py -1 {1} -2 {2} -r runName -p 6' ::: raw_data/*_R1_*.fastq.gz ::: raw_data/*_R2_*.fastq.gz
