#!/bin/sh

reference_file=$1
reads_file=$2
outputfile=$3



# run Minimap2 tool
#the pac bio setting didn't work well. Chopped reads into 500 bp for some reason.
#minimap2 -ax map-pb $reference_file $reads_file > $outputfile'.sam' 

#splice setting works
minimap2 -ax splice $reference_file $reads_file > $outputfile'.sam' 

echo $outputfile'.sam'
#this converts and indexes for IGV viewing or my analysis processing

# sam to bam
samtools view -Sb $outputfile'.sam' > $outputfile'.bam'

# sort bam file
samtools sort -o $outputfile.sorted.bam $outputfile.bam

# index
samtools index $outputfile.sorted.bam


