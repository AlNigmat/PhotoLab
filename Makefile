GXX=g++
BD=../build
CXX_FLAGS=-c -Wall -Werror -Wextra -std=c++17
GTESTFLAGS=-lgtest

ifeq ($(shell uname -s), Linux)
	GTESTFLAGS+= -lpthread -lrt
endif

MODEL_SOURCES= test.cpp Photo.cpp Filter.cpp SimpleFilter.cpp sliders.cpp controller.cpp 
MODEL_OBJECTS=$(addprefix $(BD)/,$(MODEL_SOURCES:.cpp=.o))

./$(BD)/%.o:%.cpp
	$(GXX) $(CXX_FLAGS) $< -o $@

./$(BD)/%.o: */%.cpp
	$(GXX) $(CXX_FLAGS) $< -o $@
 
./$(BD)/%.o: */*/%.cpp
	$(GXX) $(CXX_FLAGS) $< -o $@

./$(BD)/%.o: */*/*/%.cpp
	$(GXX) $(CXX_FLAGS) $< -o $@

all: test check clean

install: clean build

build:
	cd $(BD) && qmake ../src/PhotoLab/PhotoLab.pro && make

uninstall:
	rm -rf $(HOME)/Applications/PhotoLab
	rm -rf $(BD)/*

test: clean $(MODEL_OBJECTS)
	$(GXX) $(MODEL_OBJECTS) -o $(BD)/$@ $(GTESTFLAGS)
	./$(BD)/$@

clean:
	rm -rf $(BD)/*

