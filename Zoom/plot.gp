reset
set notitle
set terminal postscript enhanced eps color "Helvetica" 26
set encoding iso_8859_1
set output "s2_distrib.eps"

set key noauto

set size 1.2,1
set origin 0,0

set multiplot

set style line 1 lt 1 lc rgb 'dark-red' lw 6
set pointsize 1.5

set size 1.2,1          # The first plot (host plot)
set origin 0,0
set grid
set xlabel 'Attenuation [dB]'
set ylabel 'Culmulative Density Function'
set object 1 rect from -8.4,0.41 to -3.1,0.95
set object 1 rect fc rgb 'black' fillstyle solid 0.0 noborder
plot 'Ka.dat' ls 1 w lines, 'Ka.dat' w points pt 4 lc rgb 'dark-red' lw 6


set size 0.7,0.5        # The second one (inset)
set origin 0.15,0.45
unset grid
set logscale y
set xtics font "Helvetica,22"
set ytics font "Helvetica,22"
unset ylabel
unset xlabel
plot 'Ka_bis.dat' ls 1 w lines, 'Ka_bis.dat' w points pt 4 lc rgb 'dark-red' lw 6
