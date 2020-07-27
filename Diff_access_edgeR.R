library(edgeR)
data = read.table("ATAC_peaks_raw_counts.matrix", header=T, row.names=1, com='')

# DARs between T2 and T1
col_ordering = c(4,5,6,1,2,3)
rnaseqMatrix = data[,col_ordering]
rnaseqMatrix = round(rnaseqMatrix)
rnaseqMatrix = rnaseqMatrix[rowSums(cpm(rnaseqMatrix) > 1) >= 2,]
conditions = factor(c(rep("T2", 3), rep("T1", 3)))
exp_study = DGEList(counts=rnaseqMatrix, group=conditions)
exp_study = calcNormFactors(exp_study)
exp_study = estimateDisp(exp_study)
et = exactTest(exp_study, pair=c("T2", "T1"))
tTags = topTags(et,n=NULL)
result_table = tTags$table
result_table = data.frame(sampleA="T2", sampleB="T1", result_table)
result_table$logFC = -1 * result_table$logFC
write.table(result_table, file='ATAC_peaks_raw_counts.matrix.T2_vs_T1.edgeR.DE_results', sep='	', quote=F, row.names=T)
write.table(rnaseqMatrix, file='ATAC_peaks_raw_counts.matrix.T2_vs_T1.edgeR.count_matrix', sep='	', quote=F, row.names=T)
source("/Users/moh034/Desktop/rnaseq_plot_funcs.R")
pdf("ATAC_peaks_raw_counts.matrix.T2_vs_T1.edgeR.DE_results.MA_n_Volcano.pdf")
plot_MA_and_Volcano(rownames(result_table), result_table$logCPM, result_table$logFC, result_table$FDR)
dev.off()

# DARs between T2 and T1
col_ordering = c(7,8,9,1,2,3)
rnaseqMatrix = data[,col_orATAC_peaks_raw_counts.matrix.T2_vs_T1.edgeR.DE_results.MA_n_Volcano.pdfdering]
rnaseqMatrix = round(rnaseqMatrix)
rnaseqMatrix = rnaseqMatrix[rowSums(cpm(rnaseqMatrix) > 1) >= 2,]
conditions = factor(c(rep("T3", 3), rep("T1", 3)))
exp_study = DGEList(counts=rnaseqMatrix, group=conditions)
exp_study = calcNormFactors(exp_study)
exp_study = estimateDisp(exp_study)
et = exactTest(exp_study, pair=c("T3", "T1"))
tTags = topTags(et,n=NULL)
result_table = tTags$table
result_table = data.frame(sampleA="T3", sampleB="T1", result_table)
result_table$logFC = -1 * result_table$logFC
write.table(result_table, file='ATAC_peaks_raw_counts.matrix.T3_vs_T1.edgeR.DE_results', sep='	', quote=F, row.names=T)
write.table(rnaseqMatrix, file='ATAC_peaks_raw_counts.matrix.T3_vs_T1.edgeR.count_matrix', sep='	', quote=F, row.names=T)
source("/Users/moh034/Desktop/rnaseq_plot_funcs.R")
pdf("ATAC_peaks_raw_counts.matrix.T3_vs_T1.edgeR.DE_results.MA_n_Volcano.pdf")
plot_MA_and_Volcano(rownames(result_table), result_table$logCPM, result_table$logFC, result_table$FDR)
dev.off()

# DARs between T2 and T1
col_ordering = c(10,11,12,1,2,3)
rnaseqMatrix = data[,col_ordering]
rnaseqMatrix = round(rnaseqMatrix)
rnaseqMatrix = rnaseqMatrix[rowSums(cpm(rnaseqMatrix) > 1) >= 2,]
conditions = factor(c(rep("T4", 3), rep("T1", 3)))
exp_study = DGEList(counts=rnaseqMatrix, group=conditions)
exp_study = calcNormFactors(exp_study)
exp_study = estimateDisp(exp_study)
et = exactTest(exp_study, pair=c("T4", "T1"))
tTags = topTags(et,n=NULL)
result_table = tTags$table
result_table = data.frame(sampleA="T4", sampleB="T1", result_table)
result_table$logFC = -1 * result_table$logFC
write.table(result_table, file='ATAC_peaks_raw_counts.matrix.T4_vs_T1.edgeR.DE_results', sep='	', quote=F, row.names=T)
write.table(rnaseqMatrix, file='ATAC_peaks_raw_counts.matrix.T4_vs_T1.edgeR.count_matrix', sep='	', quote=F, row.names=T)
source("/Users/moh034/Desktop/rnaseq_plot_funcs.R")
pdf("ATAC_peaks_raw_counts.matrix.T4_vs_T1.edgeR.DE_results.MA_n_Volcano.pdf")
plot_MA_and_Volcano(rownames(result_table), result_table$logCPM, result_table$logFC, result_table$FDR)
dev.off()
