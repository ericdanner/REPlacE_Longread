
#CNTL_WTFWD
#Deletion
dfCntlPolbWT <- read.csv("/home/edanner/workspace/V2Seq/Analysis/output/CntlPolbWT/PolbCntlWT.coverageStats.csv", header=TRUE)
plot(dfCntlPolbWT$bp, dfCntlPolbWT$delAvg,
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection of WT Polb Sequences",
     ylab = "% of reads containing with deletion of base",
     ylim = c(0, 1))
#insertion
plot(dfCntlPolbWT$bp, dfCntlPolbWT$insAvg,
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection of WT Polb Sequences",
     ylab = "% of reads containing with deletion of base",
     ylim = c(0, 1))

#Indel
plot(dfPolbWT$bp, dfPolbWT$indelAvg,
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection of WT Polb Sequences",
     ylab = "% of reads containing with deletion of base",
     ylim = c(0, 1))


#TargetedWT Resection
dfPolbWT <- read.table("/home/edanner/workspace/V2Seq/Analysis/output/PolbTargetedWT/PolbTargetedWT.coverageStats.tsv", header=TRUE)
plot(dfPolbWT$bp, dfPolbWT$delAvg,
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection of WT Polb Sequences",
     ylab = "% of reads containing with deletion of base",
     ylim = c(0, 1))
#insertion
plot(dfPolbWT$bp, dfPolbWT$insAvg,
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection of WT Polb Sequences",
     ylab = "% of reads containing with deletion of base",
     ylim = c(0, 1))
#indel
plot(dfPolbWT$bp, dfPolbWT$indelAvg,
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection of WT Polb Sequences",
     ylab = "% of reads containing with deletion of base",
     ylim = c(0, 1))


plot(dfPolbWT$bp, dfPolbWT$delAvg,
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection of WT Polb Sequences",
     ylab = "% of reads containing with deletion of base",
     ylim = c(0, 1))


#zooming in on the left indel 1021bp
plot(dfPolbWT$bp[921:1121], dfPolbWT$delAvg[921:1121],
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection at left cutsite",
     ylab = "% of reads containing with deletion of base",
     ylim = c(0, 0.5))

dfPolbWT2 <- read.table("/home/edanner/workspace/V2Seq/Analysis/output/PolbTargetedWT/PolbTargetedWT2.coverageStats.csv", header=TRUE)
plot(dfPolbWT2$bp[921:1121], dfPolbWT2$delAvg[921:1121],
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection at left cutsite",
     ylab = "% of reads containing with deletion of base",
     ylim = c(0, 0.5))


#zoomign in on the right indel 1428
plot(dfPolbWT$bp[1328:1528], dfPolbWT$delAvg[1328:1528],
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection at Right Cutsite",
     ylab = "% of reads containing the base",
     ylim = c(0, 0.5))

#zoomign in on the right indel 1428 Further smoothed
plot(dfPolbWT2$bp[1328:1528], dfPolbWT2$delAvg[1328:1528],
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection at Right Cutsite",
     ylab = "% of reads containing the base",
     ylim = c(0, 0.5))

#WT insertions
plot(dfPolbWT$bp, dfPolbWT$insRatio,
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Insertions at each base",
     ylab = "% of reads containing the base",
     ylim = c(0, 1))

#WT indels
plot(dfPolbWT$bp, dfPolbWT$indelRatio,
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "% of the WT reads containing a deletion at each base",
     ylab = "% of reads containing the base",
     ylim = c(0, 1))



