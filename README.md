# Salmon ATAC-seq analyses
Mohamed et al 2020 (under review) Integrated transcriptome, DNA methylome and chromatin state accessibility landscapes reveal regulators of Atlantic salmon maturation

This repository contains scripts to perform ATAC-seq analysis and integrative chromatin accessibility/transcriptome analyses. 

the following scripts were used to perform dataQC, map ATAC-seq data to the Atlantic salmon reference genome ICSASG_v2 (Lien et al., 2016), perform post-mapping QC, peak calling and QC, perform differential accessibility analyses using the R package edgeR, perfom co-accessibility analyses, and cobmined acessibility/expression analysis 

raw data QC: fastQC.sh was used to check the quality of the data, no low-quality bases were detected (All passed a quality threshold of Q>30)

genome mapping: bowtie2-build.sh and bowtie2-mapping.sh were used to index the salmon genome and to map ATAC-seq data to the salmon genome using BOWTIE2 

post-mapping QC: MarkDuplicates.sh, quality_multiple.sh for removal of PCR duplicates and retain uniquely mapped reads 

peak calling: using MACS2 to call peaks 

Differential accessibility analysis: Diff_access_edgeR.R for differential analysis using edgeR 

Expression and accessibility co-analysis: genic_proxim_access_exp.awk describes the steps required to collect data for plotting as MA bi-plots 




