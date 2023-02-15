#! /bin/bash
filename=MonkeyPox.fasta
echo " $filename is being processed..."
gc=( $( grep -io 'g\|c' $filename | wc -l))
total=( $( grep -v ">" < $filename | tr -d '\s\r' | wc -c))

percent=$[100*gc/total]
echo " The GC content of $filename is: "$percent"%"