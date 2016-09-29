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

plot "result_clock_gettime.csv" using 1:2 title 'baseline' with line lt rgb 'blue', \
        "result_clock_gettime.csv" using 1:3 title 'openmp_2' with line lt rgb 'red', \
        "result_clock_gettime.csv" using 1:4 title 'openmp_4' with line lt rgb 'green', \
        "result_clock_gettime.csv" using 1:5 title 'avx' with line lt rgb 'yellow', \
        "result_clock_gettime.csv" using 1:6 title 'avx unroll' with line lt rgb 'orange' ,\
        "result_clock_gettime.csv" using 1:7 title 'Leibniz' with line lt rgb 'black'