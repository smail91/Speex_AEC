CC = gcc
CFLAGS = -O3 -I./inc -DFLOATING_POINT -DUSE_KISS_FFT
LDFLAGS= -O3 -I./inc -lm
SRCS = testecho.c src/fftwrap.c src/filterbank.c src/kiss_fft.c src/kiss_fftr.c src/mdf.c src/preprocess.c
OBJS = testecho.o src/fftwrap.o src/filterbank.o src/kiss_fft.o src/kiss_fftr.o src/mdf.o src/preprocess.o

 
TARGET = test_echo
 
all: $(TARGET)
 
clean:
	rm -f src/*.o
	rm -f *.o
	rm -f $(TARGET)
 
$(TARGET): $(OBJS)
	$(CC) -o $@ $(OBJS) $(LDFLAGS)
