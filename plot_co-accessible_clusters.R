files = c("99liver_peaks_norm_access.txt","open_peaks_norm_access.txt","closed_peaks_norm_access.txt")
pdf(file="liver_clusters_plot.pdf")
par(mfrow=c(2, 2))
par(cex=0.6)
par(mar=c(7,4,4,2))
# png(file="liver_clusters_plot.png");
for (i in 1:length(files)) {
  data = read.table(files[i], header=T, row.names=1)
  ymin = min(data); ymax = max(data);
  plot_label = paste(files[i], ', ', length(data[,1]), " trans", sep='')
  plot(as.numeric(data[1,]), type='l', ylim=c(ymin,ymax), main=plot_label, col='lightgray', xaxt='n', xlab='', ylab='centered log2(fpkm+1)')
  axis(side=1, at=1:length(data[1,]), labels=colnames(data), las=2)
  for(r in 2:length(data[,1])) {
    points(as.numeric(data[r,]), type='l', col='lightgray')
  }
  points(as.numeric(colMeans(data)), type='o', col='blue')
}
dev.off()
