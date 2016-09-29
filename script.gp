reset    
                                                                    
set ylabel 'time(sec)'
set xlabel 'N'
set key left
set style fill solid
set title 'perfomance comparison'
set term png enhanced font 'Verdana,10'
set datafile separator ","
set grid
set output 'compare.png'

plot "result_clock_gettime.csv" using 1:2 title 'baseline' with linespoints, \
        "result_clock_gettime.csv" using 1:3 title 'openmp_2' with linespoints, \
        "result_clock_gettime.csv" using 1:4 title 'openmp_4' with linespoints, \
        "result_clock_gettime.csv" using 1:5 title 'avx' with linespoints, \
        "result_clock_gettime.csv" using 1:6 title 'avx unroll' with linespoints, \
        "result_clock_gettime.csv" using 1:7 title 'leibniz' with linespoints