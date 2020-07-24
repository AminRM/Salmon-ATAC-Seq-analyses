##################################################################################
# Collect data for the 9 plots (12 files!) for each of genic and proximal regions
# Each file with 5 columns:
# 1. Gene
# 2. Peak
# 3. Average expression
# 4. Differential expression
# 5. Differential chromatine accessibility
###################################################################################

#read the expression data, identify DE genes at the three times 
file=liver_mean_logCPM_data.txt
awk 'NR>1 {print $1, 0.5*($2+$3), $3-$2}' $file | sort -u > ave_de.t2.j
awk 'NR>1 {print $1, 0.5*($2+$4), $4-$2}' $file | sort -u > ave_de.t3.j
awk 'NR>1 {print $1, 0.5*($2+$5), $5-$2}' $file | sort -u > ave_de.t4.j

#extract accessibilty data for genic regions at each time 
awk 'NR>1 {print $2, $1, $3, $4, $5, $6}' T2_genic_open_closed.txt > hihi
awk 'NR>1 {print $2, $1, $3, $4, $5, $6}' T3_genic_open_closed.txt >> hihi
awk 'NR>1 {print $2, $1, $3, $4, $5, $6}' T4_genic_open_closed.txt >> hihi
sort -u hihi > DAC_Genic.txt
rm hihi

#join different combinations of expression/accessibility for plotting 
join -a1 ave_de.t2.j DAC_Genic.txt | awk 'NF==3 {print $1, "NoPeak", $2, $3, 0}' > Genic_P1P4P7_T2DEG_NoDAC.txt
join -a1 ave_de.t3.j DAC_Genic.txt | awk 'NF==3 {print $1, "NoPeak", $2, $3, 0}' > Genic_P2P5P8_T3DEG_NoDAC.txt
join -a1 ave_de.t4.j DAC_Genic.txt | awk 'NF==3 {print $1, "NoPeak", $2, $3, 0}' > Genic_P3P6P9_T4DEG_NoDAC.txt

join -a1 ave_de.t2.j DAC_Genic.txt | awk 'NF==8 {print $1, $4, $2, $3, $6-$5}' > Genic_P1_DAC.txt
join -a1 ave_de.t3.j DAC_Genic.txt | awk 'NF==8 {print $1, $4, $2, $3, $6-$5}' > Genic_P2_DAC.txt
join -a1 ave_de.t4.j DAC_Genic.txt | awk 'NF==8 {print $1, $4, $2, $3, $6-$5}' > Genic_P3_DAC.txt

join -a1 ave_de.t2.j DAC_Genic.txt | awk 'NF==8 {print $1, $4, $2, $3, $7-$5}' > Genic_P4_DAC.txt
join -a1 ave_de.t3.j DAC_Genic.txt | awk 'NF==8 {print $1, $4, $2, $3, $7-$5}' > Genic_P5_DAC.txt
join -a1 ave_de.t4.j DAC_Genic.txt | awk 'NF==8 {print $1, $4, $2, $3, $7-$5}' > Genic_P6_DAC.txt

join -a1 ave_de.t2.j DAC_Genic.txt | awk 'NF==8 {print $1, $4, $2, $3, $8-$5}' > Genic_P7_DAC.txt
join -a1 ave_de.t3.j DAC_Genic.txt | awk 'NF==8 {print $1, $4, $2, $3, $8-$5}' > Genic_P8_DAC.txt
join -a1 ave_de.t4.j DAC_Genic.txt | awk 'NF==8 {print $1, $4, $2, $3, $8-$5}' > Genic_P9_DAC.txt

#extract accessibilty data for proximal regions (5kb upstream of TSS) at each time 
awk 'NR>1 {print $2, $1, $3, $4, $5, $6}' T2_proximal_open_closed.txt > hihi
awk 'NR>1 {print $2, $1, $3, $4, $5, $6}' T3_proximal_open_closed.txt >> hihi
awk 'NR>1 {print $2, $1, $3, $4, $5, $6}' T4_proximal_open_closed.txt >> hihi
sort -u hihi > DAC_proximal.txt
rm hihi

#join different combinations of expression/accessibility for plotting 
join -a1 ave_de.t2.j DAC_proximal.txt | awk 'NF==3 {print $1, "NoPeak", $2, $3, 0}' > proximal_P1P4P7_T2DEG_NoDAC.txt
join -a1 ave_de.t3.j DAC_proximal.txt | awk 'NF==3 {print $1, "NoPeak", $2, $3, 0}' > proximal_P2P5P8_T3DEG_NoDAC.txt
join -a1 ave_de.t4.j DAC_proximal.txt | awk 'NF==3 {print $1, "NoPeak", $2, $3, 0}' > proximal_P3P6P9_T4DEG_NoDAC.txt

join -a1 ave_de.t2.j DAC_proximal.txt | awk 'NF==8 {print $1, $4, $2, $3, $6-$5}' > proximal_P1_DAC.txt
join -a1 ave_de.t3.j DAC_proximal.txt | awk 'NF==8 {print $1, $4, $2, $3, $6-$5}' > proximal_P2_DAC.txt
join -a1 ave_de.t4.j DAC_proximal.txt | awk 'NF==8 {print $1, $4, $2, $3, $6-$5}' > proximal_P3_DAC.txt

join -a1 ave_de.t2.j DAC_proximal.txt | awk 'NF==8 {print $1, $4, $2, $3, $7-$5}' > proximal_P4_DAC.txt
join -a1 ave_de.t3.j DAC_proximal.txt | awk 'NF==8 {print $1, $4, $2, $3, $7-$5}' > proximal_P5_DAC.txt
join -a1 ave_de.t4.j DAC_proximal.txt | awk 'NF==8 {print $1, $4, $2, $3, $7-$5}' > proximal_P6_DAC.txt

join -a1 ave_de.t2.j DAC_proximal.txt | awk 'NF==8 {print $1, $4, $2, $3, $8-$5}' > proximal_P7_DAC.txt
join -a1 ave_de.t3.j DAC_proximal.txt | awk 'NF==8 {print $1, $4, $2, $3, $8-$5}' > proximal_P8_DAC.txt
join -a1 ave_de.t4.j DAC_proximal.txt | awk 'NF==8 {print $1, $4, $2, $3, $8-$5}' > proximal_P9_DAC.txt

#NOW these files can now be visualised using Ganuplot 


