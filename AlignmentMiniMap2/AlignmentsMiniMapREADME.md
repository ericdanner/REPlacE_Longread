#Conda enviornemnt: $conda activate Minimap2  (my computer called PacbioTest1)

## I use the splice alignment portion. Minimap2 was ~1000x faster than the pacbio mapping from bbmap. It treats the large deletions as splicing though, so the analysis requires deletion/N(splicing) to be read from the cigar string.

#example command variables:
bash MiniMapscript.sh referencefile.fasta readFile.fasta PolbCherryMiniMap outputfileName&Location
#example command
bash MiniMapscript.sh ../refseqs/polbcherry.fasta ../sortedseqs/Targeted/PolbCherry.fasta Polb/TargetedPolbCherry


####   Reference Alignment commands: ####

# ----------Reporter ---------------
#Reporter WT control:
bash MiniMapscript.sh ../refseqs/reporterwt.fasta ../sortedseqs/Control/CntlReporterWTfwd.fasta Reporter/CntlReporterWT


#Targeted BFP/WT Reporter: I don't use this and I use BBmap isntead as this seems to truncate some alignments
bash MiniMapscript.sh ../refseqs/reporterwt.fasta ../sortedseqs/Targeted/TargetedReporterWTfwd.fasta Reporter/TargetedReporterWTfwd
#Targeted BFP/WT Reversed Reporter: I don't use this and I use BBmap isntead as this seems to truncate some alignments
bash MiniMapscript.sh ../refseqs/reporterwtrev.fasta ../sortedseqs/Targeted/TargetedReporterWTrev.fasta Reporter/TargetedReporterWTrev
#Targeted mCherry Reporter:
bash MiniMapscript.sh ../refseqs/reportercherry.fasta ../sortedseqs/Targeted/TargetedmCherryReporter.fasta Reporter/TargetedReporterCherry
#Targeted Del/Venus Reproter:
bash MiniMapscript.sh ../refseqs/reporterdel.fasta ../sortedseqs/Targeted/TargetedReporterdel.fasta Reporter/TargetedReporterDel


# ----------Polb:  ----------------
#WT Control
bash MiniMapscript.sh ../refseqs/polbwt.fasta ../sortedseqs/Control/CntlWTpolb.fasta Polb/Cntl_PolbWT

#Targeted WT:
bash MiniMapscript.sh ../refseqs/polbwt.fasta ../sortedseqs/Targeted/WTpolb.fasta Polb/PolbTargetedWT
#Targeted WT-REV
bash MiniMapscript.sh ../refseqs/polbwt-rev.fasta ../sortedseqs/Targeted/WTREVpolb.fasta Polb/PolbTargetedWT_REV

#Targeted replacement:
bash MiniMapscript.sh ../refseqs/polbcherry.fasta ../sortedseqs/Targeted/PolbCherry.fasta Polb/TargetedPolbCherry
#Targeted Deletion:
bash MiniMapscript.sh ../refseqs/polbdel.fasta ../sortedseqs/Targeted/PolbDel.fasta Polb/PolbTargetedDel



after alignment to view in the terminal:
less filename.sam 
exit with "q"




