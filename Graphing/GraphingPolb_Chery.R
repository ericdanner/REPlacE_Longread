
#HIROSPolb Resection
dfPolbReplace <- read.table("/home/edanner/workspace/V2Seq/Analysis/output/PolbTargetedReplace/PolbTargetReplace.coverageStats.tsv", header=TRUE)
plot(dfPolbReplace$bp, dfPolbReplace$delAvg,
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection of Polb Exon Exchanged Alleles ",
     ylab = "% of reads with base deleted",
     ylim = c(0, 1))

#Zoom in on the left
plot(dfPolbReplace$bp[921:1121], 1-dfPolbReplace$delAvg[921:1121],
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection At Left Junction in Correct Polb Replacement Alleles",
     ylab = "% of reads with deletion of base",
     ylim = c(0, 1))


#Zoom in on the right #left site of cutsite is 2251
plot(dfPolbReplace$bp[2151:2351], 1-dfPolbReplace$delAvg[2151:2351],
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection At Right Junction in Correct Polb Replacement Alleles",
     ylab = "% of reads with deletion of base",
     ylim = c(0, 1))

#Polb Hiros Iinsertion locations
plot(dfPolbReplace$bp, dfPolbReplace$insAvg,
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "% of the WT reads containing an insertion at each base",
     ylab = "% of reads containing the base",
     ylim = c(0, 1))

#Zoom in on the left INSERTIONS
plot(dfPolbReplace$bp[921:1121], dfPolbReplace$insAvg[921:1121],
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Insertions at each base Left Junction",
     ylab = "% of reads containing an insertion",
     ylim = c(0, 1))

#Zoom in on the right INSERTIONS
plot(dfPolbReplace$bp[2151:2351], dfPolbReplace$insAvg[2151:2351],
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Insertion at each base position Right Junction",
     ylab = "% of reads containing an insertion",
     ylim = c(0, 1))

#Polb Indel 
plot(dfPolbReplace$bp, dfPolbReplace$indelAvg,
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "% of the WT reads containing an indel at each base",
     ylab = "% of reads containing the base",
     ylim = c(0, 1))

#Zoom in on the left INDEL
plot(dfPolbReplace$bp[921:1121], dfPolbReplace$indelAvg[921:1121],
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "% of the WT reads containing a deletion base",
     ylab = "% of reads containing the base",
     ylim = c(0, 1))

#Zoom in on the right INDEL
plot(dfPolbReplace$bp[2151:2351], dfPolbReplace$indelAvg[2151:2351],
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "% of the WT reads containing a deletion base",
     ylab = "% of reads containing the base",
     ylim = c(0, 1))
