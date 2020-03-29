
#Reproter Targeted Cells- Replacement with mCherry

#Resection
dfmCherry <- read.table("/home/edanner/workspace/V2Seq/Analysis/output/ReporterTargetedCherry/ReporterTargetedCherry.coverageStats.tsv", header=TRUE)
plot(dfmCherry$bp, dfmCherry$delAvg,
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "* Resection of Correct Knock-in mCherry alleles",
     ylab = "% of reads containing with deletion of base",
     ylim = c(0, 1))

plot(dfmCherry$bp, dfmCherry$insAvg,
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "* Resection of Correct Knock-in mCherry alleles",
     ylab = "% of reads containing with deletion of base",
     ylim = c(0, 1))

#zooming in on the left indel
plot(dfmCherry$bp[825:1025], dfmCherry$delAvg[825:1025],
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection at left cutsite",
     ylab = "% of reads containing with deletion of base",
     ylim = c(0, 1))

#zoomign in on the right indel
plot(dfmCherry$bp[1657:1857], dfmCherry$delAvg[1657:1857],
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection at Right Cutsite",
     ylab = "% of reads containing the base",
     ylim = c(0, 1))


