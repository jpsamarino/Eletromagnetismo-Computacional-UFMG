set terminal wxt noenhanced title "teste1.geo";
set size ratio -1;
unset label;
unset xtics;
unset ytics;
unset ztics;
unset x2tics;
unset y2tics;
set title "Modelo 3.1 (a)" font "Arial,10" noenhanced;
set xlabel "X[m]" textcolor rgb "#000000" font "Arial,10" enhanced rotate by 0.000000;
set ylabel "Y[m]" textcolor rgb "#000000" font "Arial,10" enhanced rotate by 90.000000;
set y2label "Depth[m]" textcolor rgb "#000000" font "Arial,10" enhanced rotate by -90.000000;
set grid noxtics;
set grid noytics;
set grid nomxtics;
set grid nomytics;
set grid front;
set border front;
set grid linewidth 0.500000, linewidth 0.500000;
set xtics border in scale  1.4 mirror textcolor rgb "#000000" font "Arial,10";
unset mxtics;
unset x2tics;
unset mx2tics;
set ytics border in scale  1.4 textcolor rgb "#000000" font "Arial,10";
unset mytics;
set y2tics border in scale  1.4 textcolor rgb "#000000" font "Arial,10";
unset my2tics;
set xrange [-0.001:0.600000] ;
set yrange [-0.001:0.600000];
set y2range [-0.001:0.600000] reverse;
set cbrange [1:3];
set cbtics ("pec" 1,"free_space" 2,"concrete" 3) font "Arial,8";
unset key;
set palette defined (1 "black",2 "white",3 "sandybrown");
set mouse format "%.2f"
plot "teste1.geo" binary array=240x240 format="%short" skip=378 scan=yx dx=0.002500 dy=0.002500 using 1 with image;