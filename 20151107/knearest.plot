set terminal postscript eps color enhanced 22
set output "class".file.".eps"
set ylabel "sepal width"
set xlabel "petal width"

plot "result/res_0_".file using 1:2 ti "group 0",\
     "result/res_1_".file using 1:2 ti "group 1" ,\
     "result/res_2_".file using 1:2 ti "group 2"


