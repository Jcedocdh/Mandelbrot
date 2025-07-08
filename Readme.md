seuqential command
icpc -diag-disable=10441 -march=alderlake -qopenmp -O3 -g -qopt-report=2
mandelbrot.cpp -o sequential.out
icpc -O3 -g -diag-disable=10441 -march=alderlake -qopt-report=2 mandelbrot.cpp