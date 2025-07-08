CXX = icpc
CXXFLAGS = -diag-disable=10441 -march=alderlake -g -qopt-report=2 -O3 -qopenmp

SRCDIR = src
OUTDIR = release/sequential
TARGET = mandelbrot_sequential

SRC = $(SRCDIR)/mandelbrot.cpp
OBJ = $(OUTDIR)/$(TARGET)

all: $(OBJ)

$(OBJ): $(SRC)
	@mkdir -p $(OUTDIR)
	$(CXX) $(CXXFLAGS) -o $@ $<

clean:
	rm -rf release

.PHONY: all clean
