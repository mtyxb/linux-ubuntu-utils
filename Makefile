TARGET = main
CXX = /usr/bin/c++
CXXFLAGS += -g  -std=c++11 
CXXFLAGS += ${shell pkg-config --cflags DLL libPKG}
LINKFLAGS += ${shell pkg-config --libs DLL libPKG}

SOURCES = ${shell ls *.cpp}
OBJECTS = $(patsubst %.cpp,%.o, ${SOURCES})

all: ${TARGET}

${TARGET}: ${OBJECTS}
	${CXX} $^ -o $@ ${LINKFLAGS}

clean:
	rm -f ${OBJECTS} ${TARGET}





