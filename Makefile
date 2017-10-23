RAW_DATA_INPUT_FILE = "input-data/wiki-test.txt"

all: preprocess

preprocess: preprocess.o
	./build/preprocess.o $(RAW_DATA_INPUT_FILE)

preprocess.o:
	g++ \
		src/preprocess.cpp \
		-g \
		-lxml2 \
		-Wall \
		-o build/preprocess.o \

