# Salmon ATAC-seq analyses
Mohamed et al (in prep) Integrated transcriptome, DNA methylome and chromatin state accessibility landscapes reveal regulators of Atlantic salmon maturation

This repository contains srcipts to perform ATAC-seq analysis and integrative chromatin accessibility/transcriptome analyses. 

the following scripts were used to perform dataQC, map ATAC-seq data to the Atlantic salmon reference genome ICSASG_v2 (Lien et al., 2016), perform post-mapping QC, peak calling and QC, perform differential accessibility analyses using the R package edgeR, perfom co-accessibility analyses, and cobmined acessibility/expression analysis 

raw data QC: fastQC.sh was used to check the quality of the data, no low-quality bases were detected (All passed a quality threshold of Q>30)

genome mapping: bowtie2-build.sh and bowtie2-mapping.sh were used to index the salmon genome and to map ATAC-seq data to the salmon genome using BOWTIE2 


