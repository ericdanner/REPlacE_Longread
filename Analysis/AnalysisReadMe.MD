##This is ideas and code taken from the PigX sequence pipeline and modified

#Files:
getIndelStats.R <-file I originally used
getIndelStatsExportInsertions.R <-File I think he made that exports indel stats. Got it from forked github code
getIndelStatsGenomeRef.R <- File sent in Jun 2019 that is current snakemake file which is aligned agaisnt genome and not amplicon
getIndelStatsExportInsertionsN.R <-File I think he made that exports indel stats. Also replaces the N with D's so that splice aligner from minimap2 can work
getIndelStatsExportInsertionsNreference.R <-- this is a sequence


#Run on R 3.5 as per required packages in script.	

for getIndelStats.R arg[1]=bamFile arg[2]=sampleName arg[3]=outDir arg[4]=cutSitesFiles arg[5]=sgRNA_list(column (:) separated list of sgRNA ids (must match ids in cutSitesFile)) arg[6]=reference.fasta



#To find indel averages

#move into Analysis folder containing: getIndelStatsExportinsertionsNreference.R

# ------------------- Targeted Reporter ----------------------------------------------

#Control WT: Worked with no insertion export
Rscript getIndelStatsExportinsertionsNreference.R /home/edanner/workspace/V2Seq/AlignmentMiniMap2/Reporter/CntlReporterWT.sorted.bam CntlWTReporter ./output/CntlWTReporter /home/edanner/workspace/V2Seq/Analysis/cutsites/sgRNAs.txt bfp1:bfp2 ../refseqs/reporterwt.fasta



#Targeted WT:  Worked (also I used bbmap for this alignment)
Rscript getIndelStatsExportinsertionsNreference.R /home/edanner/workspace/V2Seq/alignmentsBBMap/Reporter/TargetedReporterWTfwd.sorted.bam ReporterTargetedWT ./output/ReporterTargetedWT /home/edanner/workspace/V2Seq/Analysis/cutsites/sgRNAs.txt bfp1:bfp2 ../refseqs/reporterwt.fasta

#Targeted mCherry: Worked( no insertion)
Rscript getIndelStatsExportinsertionsNreferenceBlocked.R /home/edanner/workspace/V2Seq/AlignmentMiniMap2/Reporter/TargetedReporterCherry.sorted.bam ReporterTargetedCherry ./output/ReporterTargetedCherry /home/edanner/workspace/V2Seq/Analysis/cutsites/sgRNAs.txt mCherry1:mCherry2 ../refseqs/reportercherry.fasta

#Targeted Del/Venus: Worked with no insertion export
Rscript getIndelStatsExportinsertionsNreferenceBlocked.R /home/edanner/workspace/V2Seq/AlignmentMiniMap2/Reporter/TargetedReporterDel.sorted.bam ReporterTargetedDel ./output/ReporterTargetedDel /home/edanner/workspace/V2Seq/Analysis/cutsites/sgRNAs.txt venus1 ../refseqs/reporterdel.fasta



# ----------------------------Polb -------------------------------------------------------
#Control Polb WT: Worked with no insertion export
Rscript getIndelStatsExportinsertionsNreferenceBlocked.R /home/edanner/workspace/V2Seq/AlignmentMiniMap2/Polb/Cntl_PolbWT.sorted.bam PolbCntlWT ./output/CntlPolbWT /home/edanner/workspace/V2Seq/Analysis/cutsites/sgRNAs.txt pWT1:pWT2 ../refseqs/polbwt.fasta


#Targeted WT:   Worked
Rscript getIndelStatsExportinsertionsNreference.R /home/edanner/workspace/V2Seq/AlignmentMiniMap2/Polb/PolbTargetedWT_REV.sorted.bam PolbTargetedWT ./output/PolbTargetedWT /home/edanner/workspace/V2Seq/Analysis/cutsites/sgRNAs.txt pWT1:pWT2 ../refseqs/polbwt.fasta

#Targeted WT-REV: Worked
Rscript getIndelStatsExportinsertionsNreference.R /home/edanner/workspace/V2Seq/AlignmentMiniMap2/Polb/PolbTargetedWT_REV.sorted.bam PolbTargetedWT_Rev ./output/PolbTargetedWT-REV /home/edanner/workspace/V2Seq/Analysis/cutsites/sgRNAs.txt pWT1:pWT2 ../refseqs/polbwt-rev.fasta

#mCherry Replacement:   Worked
Rscript getIndelStatsExportinsertionsNreference.R /home/edanner/workspace/V2Seq/AlignmentMiniMap2/Polb/TargetedPolbCherry.sorted.bam PolbTargetReplace ./output/PolbTargetedReplace /home/edanner/workspace/V2Seq/Analysis/cutsites/sgRNAs.txt pCherry1:pCherry2 ../refseqs/polbcherry.fasta

#Del: Worked with no insertion export
Rscript getIndelStatsExportinsertionsNreferenceBlocked.R /home/edanner/workspace/V2Seq/AlignmentMiniMap2/Polb/PolbTargetedDel.sorted.bam PolbTargetedDel ./output/PolbTargetedDel /home/edanner/workspace/V2Seq/Analysis/cutsites/sgRNAs.txt pDel1 ../refseqs/polbdel.fasta















