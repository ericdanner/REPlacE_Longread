#!/bin/sh

reference_file=$1
reads_file=$2
outputfile=$3



# run mapPacBio tool
mapPacBio.sh ref=$reference_file in=$reads_file out=$outputfile'.sam' 

echo $outputfile'.sam'

# sam to bam
samtools view -Sb $outputfile'.sam' > $outputfile'.bam'

# sort bam file
samtools sort -o $outputfile.sorted.bam $outputfile.bam

# index
samtools index $outputfile.sorted.bam
