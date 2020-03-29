
#Reproter Targeted Cells- Deletion
#Resection

#venus
dfVENUS <- read.table("/home/edanner/workspace/V2Seq/Analysis/output/ReporterTargetedDel/ReporterTargetedDel.coverageStats.tsv", header=TRUE)
plot(dfVENUS$bp, dfVENUS$delAvg,
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection of 'Deletion' Sequences",
     ylab = "% of reads containing with deletion of base",
     ylim = c(0, 1))

#zooming in on the cut site #925bp
plot(dfVENUS$bp[825:1025], dfVENUS$delAvg[825:1025],
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection at left cutsite",
     ylab = "% of reads containing with deletion of base",
     ylim = c(0, 1))

#insertion location
plot(dfVENUS$bp, dfVENUS$insAvg,
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection of WT Reporter Seq",
     ylab = "% of reads containing deletion of base",
     ylim = c(0, 1))

#indel
plot(dfVENUS$bp, dfVENUS$indelAvg,
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection of WT Reporter Seq",
     ylab = "% of reads containing deletion of base",
     ylim = c(0, 1))

plot(dfVENUS$bp[825:1025], dfVENUS$indelAvg[825:1025],
     type = "h",
     lwd = 1,
     xlab = "Base Position",
     main = "Resection at left cutsite",
     ylab = "% of reads containing with deletion of base",
     ylim = c(0, 1))
