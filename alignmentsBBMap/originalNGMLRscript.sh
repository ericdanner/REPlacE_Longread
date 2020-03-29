#!/bin/sh

reference_file=$1
reads_file=$2
outputfile=$3



# run ngmlr tool
ngmlr -t 4 -r $reference_file -q $reads_file -o $outputfile'.sam' --subread-corridor 25	

echo $outputfile'.sam'

# sam to bam
samtools view -Sb $outputfile'.sam' > $outputfile'.bam'

# sort bam file
samtools sort -o $outputfile.sorted.bam $outputfile.bam

# index
samtools index $outputfile.sorted.bam

# find structural variants
#sniffles -m $outputfile.sorted.bam -v $outputfile.sorted.vcf
