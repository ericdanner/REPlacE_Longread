
#Reporter Control WT 

#Resection
dfBFP <- read.table("/home/edanner/workspace/V2Seq/Analysis/output/CntlWTReporter/CntlWTReporter.coverageStats.tsv", header=TRUE)
plot(dfBFP$bp, dfBFP$delAvg,
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection of WT Sequences",
     ylab = "% of reads containing with deletion of base",
     ylim = c(0, 1))

plot(dfBFP$bp, dfBFP$insAvg,
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection of WT Reporter Seq",
     ylab = "% of reads containing deletion of base",
     ylim = c(0, 1))

#Reproter Targeted Cells- WT
#Resection
dfBFP <- read.table("/home/edanner/workspace/V2Seq/Analysis/output/ReporterTargetedWT/ReporterTargetedWT.coverageStats.tsv", header=TRUE)
plot(dfBFP$bp, dfBFP$delAvg,
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection of WT Sequences",
     ylab = "% of reads containing with deletion of base",
     ylim = c(0, 1))

plot(dfBFP$bp, dfBFP$insAvg,
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection of WT Reporter Seq",
     ylab = "% of reads containing deletion of base",
     ylim = c(0, 1))



#zooming in on the left indel
plot(dfBFP$bp[825:1025], dfBFP$delRatio[825:1025],
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection at left cutsite",
     ylab = "% of reads containing with deletion of base",
     ylim = c(0, 1))

#zooming in on the right indel
plot(dfBFP$bp[1923:2123], dfBFP$delRatio[1823:2023],
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection at left cutsite",
     ylab = "% of reads containing with deletion of base",
     ylim = c(0, 1))
