set grid
set nokey

set xrange [0:15]
set yrange [-4.5:6.5]

set label 1 'R = 0.4544' at 12,5 font "Times,12"

set xlabel 'Average Expression' font "Times,12"

set palette defined (-3.5 "blue", 0 "yellow", 3.5 "red")

set title 'DAC at T2' font "Times,12"
set ylabel 'Differential Expression T2-T1' font "Times,12"
plot 'Proximal_P1P4P7_T2DEG_NoDAC.txt' u 3:4:5 w p pt 1 ps 0.25 lc 0, \
     'Proximal_P1_DAC.txt' u 3:4:5 w p pt 5 ps 0.75 lc palette
pause-1
set ylabel 'Differential Expression T3-T1' font "Times,12"
plot 'Proximal_P2P5P8_T3DEG_NoDAC.txt' u 3:4:5 w p pt 1 ps 0.25 lc 0, \
     'Proximal_P2_DAC.txt' u 3:4:5 w p pt 5 ps 0.75 lc palette
pause-1
set ylabel 'Differential Expression T4-T1' font "Times,12"
plot 'Proximal_P3P6P9_T4DEG_NoDAC.txt' u 3:4:5 w p pt 1 ps 0.25 lc 0, \
     'Proximal_P3_DAC.txt' u 3:4:5 w p pt 5 ps 0.75 lc palette
pause -1

set title 'DAC at T3' font "Times,12"
set ylabel 'Differential Expression T2-T1' font "Times,12"
plot 'Proximal_P1P4P7_T2DEG_NoDAC.txt' u 3:4:5 w p pt 1 ps 0.25 lc 0, \
     'Proximal_P4_DAC.txt' u 3:4:5 w p pt 5 ps 0.75 lc palette
pause-1
set ylabel 'Differential Expression T3-T1' font "Times,12"
plot 'Proximal_P2P5P8_T3DEG_NoDAC.txt' u 3:4:5 w p pt 1 ps 0.25 lc 0, \
     'Proximal_P5_DAC.txt' u 3:4:5 w p pt 5 ps 0.75 lc palette
pause-1
set ylabel 'Differential Expression T4-T1' font "Times,12"
plot 'Proximal_P3P6P9_T4DEG_NoDAC.txt' u 3:4:5 w p pt 1 ps 0.25 lc 0, \
     'Proximal_P6_DAC.txt' u 3:4:5 w p pt 5 ps 0.75 lc palette
pause -1

set title 'DAC at T4' font "Times,12"
set ylabel 'Differential Expression T2-T1' font "Times,12"
plot 'Proximal_P1P4P7_T2DEG_NoDAC.txt' u 3:4:5 w p pt 1 ps 0.25 lc 0, \
     'Proximal_P7_DAC.txt' u 3:4:5 w p pt 5 ps 0.75 lc palette
pause-1
set ylabel 'Differential Expression T3-T1' font "Times,12"
plot 'Proximal_P2P5P8_T3DEG_NoDAC.txt' u 3:4:5 w p pt 1 ps 0.25 lc 0, \
     'Proximal_P8_DAC.txt' u 3:4:5 w p pt 5 ps 0.75 lc palette
pause-1
set ylabel 'Differential Expression T4-T1' font "Times,12"
plot 'Proximal_P3P6P9_T4DEG_NoDAC.txt' u 3:4:5 w p pt 1 ps 0.25 lc 0, \
     'Proximal_P9_DAC.txt' u 3:4:5 w p pt 5 ps 0.75 lc palette

