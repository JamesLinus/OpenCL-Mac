OBJ = main.o cl_util.o file_io.o

all: $(OBJ)
	g++ -o cl $(OBJ) -lOpenCL

main.o:
	g++ -c OpenCL-Mac/main.c

cl_util.o: OpenCL-Mac/cl_util.h
	g++ -c OpenCL-Mac/cl_util.c

file_io.o: OpenCL-Mac/file_io.h
	g++ -c OpenCL-Mac/file_io.c

clean:
	rm -rf cl
	rm -rf *.o
