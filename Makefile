GXX=g++
BD=build
CXX_FLAGS=-c -Wall -Werror -Wextra -std=c++17
GTESTFLAGS=-lgtest

ifeq ($(shell uname -s), Linux)
	GTESTFLAGS+= -lpthread -lrt
endif

MODEL_SOURCES= test.cpp Photo.cpp Filter.cpp SimpleFilter.cpp Sliders.cpp controller.cpp 
MODEL_OBJECTS=$(addprefix $(BD)/,$(MODEL_SOURCES:.cpp=.o))

./$(BD)/%.o:%.cpp
	$(GXX) $(CXX_FLAGS) $< -o $@

./$(BD)/%.o: */%.cpp
	$(GXX) $(CXX_FLAGS) $< -o $@
 
./$(BD)/%.o: */*/%.cpp
	$(GXX) $(CXX_FLAGS) $< -o $@

./$(BD)/%.o: */*/*/%.cpp
	$(GXX) $(CXX_FLAGS) $< -o $@

all: test clean

install: clean build

build:
	mkdir build
	cd $(BD) && qmake ../PhotoLab/PhotoLab.pro && make
	cd $(BD) && open PhotoLab.app

uninstall:
	rm -rf $(BD)

test: clean $(MODEL_OBJECTS)
	$(GXX) $(MODEL_OBJECTS) -o $(BD)/$@ $(GTESTFLAGS)
	./$(BD)/$@

clean:
	rm -rf $(BD)/*
