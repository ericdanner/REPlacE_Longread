
#Polb Deletion
#Resection
dfPolbReplace <- read.table("/home/edanner/workspace/V2Seq/Analysis/output/PolbTargetedDel/PolbTargetedDel.coverageStats.tsv", header=TRUE)
plot(dfPolbReplace$bp, dfPolbReplace$delAvg,
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection of Polb Exon Exchanged Alleles ",
     ylab = "% of reads with base deleted",
     ylim = c(0, 1))

#Zoom in on the left #cutsite1021
plot(dfPolbReplace$bp[921:1121], dfPolbReplace$delAvg[921:1121],
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection At Left Junction in Correct Polb Replacement Alleles",
     ylab = "% of reads with deletion of base",
     ylim = c(0, 1))

#Insertions
dfPolbReplace <- read.table("/home/edanner/workspace/V2Seq/Analysis/output/PolbTargetedDel/PolbTargetedDel.coverageStats.tsv", header=TRUE)
plot(dfPolbReplace$bp, dfPolbReplace$insAvg,
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection of Polb Exon Exchanged Alleles ",
     ylab = "% of reads with base deleted",
     ylim = c(0, 1))

#Zoom in on the left #cutsite1021
plot(dfPolbReplace$bp[921:1121], dfPolbReplace$insAvg[921:1121],
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection At Left Junction in Correct Polb Replacement Alleles",
     ylab = "% of reads with deletion of base",
     ylim = c(0, 1))

#INDEL
dfPolbReplace <- read.table("/home/edanner/workspace/V2Seq/Analysis/output/PolbTargetedDel/PolbTargetedDel.coverageStats.tsv", header=TRUE)
plot(dfPolbReplace$bp, dfPolbReplace$indelAvg,
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection of Polb Exon Exchanged Alleles ",
     ylab = "% of reads with base deleted",
     ylim = c(0, 1))

#Zoom in on the left #cutsite1021
plot(dfPolbReplace$bp[921:1121], dfPolbReplace$indelAvg[921:1121],
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection At Left Junction in Correct Polb Replacement Alleles",
     ylab = "% of reads with deletion of base",
     ylim = c(0, 1))
