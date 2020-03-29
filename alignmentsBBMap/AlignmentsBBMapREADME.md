#In Pacbio Conda enviornemnt: $conda activate Pacbio (minimap.yml file also has bbmap package)

#mapPacBio (function for mapping long reads) made bash script
#example command:
bash scriptName.sh referencefile.fasta readFile.fasta outputfileName


##Used Commands: In nearly all samples I used MimiMap2 in the end. Only for WT Reproter did I use the BBMap Pacbio function

# ------------Flourecent Reporter System -------------------------
# WT control:
bash mapPacBioscript.sh ../refseqs/reporterwt.fasta ../sortedseqs/Control/CntlReporterWTfwd.fasta Reporter/CntlReporterWT

#Targeted Reporter
#BFP/WT Reporter: I use this and I use BBmap isntead as this seems to truncate some alignments
bash mapPacBioscript.sh ../refseqs/reporterwt.fasta ../sortedseqs/Targeted/TargetedReporterWTfwd.fasta Reporter/TargetedReporterWTfwd
#Targeted BFP/WT Reversed Reporter:
bash mapPacBioscript.sh ../refseqs/reporterwtrev.fasta ../sortedseqs/Targeted/TargetedReporterWTrev.fasta Reporter/TargetedReporterWTrev

#mCherry Reporter:
bash mapPacBioscript.sh ../refseqs/reportercherry.fasta ../sortedseqs/NEW/mCherryfwdHIROS_Targeted.fasta Reporter/Targeted/ReporterTargetedCherry
#Del/Venus Reproter:
bash mapPacBioscript.sh ../refseqs/reporterdel.fasta ../sortedseqs/NEW/delvenus_Targeted.fasta Reporter/Targeted/ReporterTargetedDel


#----------------Polb: These were mostly done in the end with Minimap2 -splicing setting ------------------
#WT Control
bash mapPacBioscript.sh ../refseqs/polbwt.fasta ../sortedseqs/WTpolbFwd_cntl.fasta Polb/Control/PolbControlWT

#Targeted WT:
bash mapPacBioscript.sh ../refseqs/polbwt.fasta ../sortedseqs/Targeted/WTpolbFwd_Targeted.fasta Polb/Targeted/PolbTargetedWT
#Targeted replacement:
bash mapPacBioscript.sh ../refseqs/polbcherry.fasta ../sortedseqs/Targeted/PolbCherry.fasta Polb/Targeted/PolbTargetedCherry
#Targeted Deletion:
bash mapPacBioscript.sh ../refseqs/polbdel.fasta ../sortedseqs/Targeted/PolbDel.fasta Polb/Targeted/PolbTargetedDel





after alignment to view in the terminal:
less filename.sam 
exit with "q"



