CC = g++
CFLAGS = -Wall -std=c++11

LIB_NAME = libcalculator.a
SRC_FILES = calculator.cpp
OBJ_FILES = $(SRC_FILES:.cpp=.o)

EXECUTABLE = calculator_app
MAIN_FILE = main.cpp

all: $(LIB_NAME) $(EXECUTABLE)

$(LIB_NAME): $(OBJ_FILES)
	ar rcs $@ $(OBJ_FILES)

$(EXECUTABLE): $(MAIN_FILE) $(LIB_NAME)
	$(CC) $(CFLAGS) -o $@ $(MAIN_FILE) -L. -lcalculator

%.o: %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ_FILES) $(LIB_NAME) $(EXECUTABLE)
