TARGET = main
CXX = /usr/bin/c++
CXXFLAGS += -g  -std=c++11 
CXXFLAGS += -I dll
LINKFLAGS += -Lbuild/dll -ldll
LINKFLAGS += -Wl,-rpath=build/dll build/dll/libdll.so

SOURCES = ${shell ls *.cpp}
OBJECTS = $(patsubst %.cpp,%.o, ${SOURCES})

all: ${TARGET}

${TARGET}: ${OBJECTS}
	${CXX} $^ -o $@ ${LINKFLAGS}

clean:
	rm -f ${OBJECTS} ${TARGET}





