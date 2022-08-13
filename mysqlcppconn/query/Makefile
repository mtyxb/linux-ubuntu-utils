TARGET = main
CXX = /usr/bin/c++
CC = ${CXX}
CXXFLAGS += -g  -std=c++11 
MYSQL_CONNECTOR_CPP_DIR = /usr/local/mysql/connector-c++-8.0.30
CXXFLAGS += -I${MYSQL_CONNECTOR_CPP_DIR}/include/jdbc -I${MYSQL_CONNECTOR_CPP_DIR}/include/mysql
LDFLAGS += -L${MYSQL_CONNECTOR_CPP_DIR}/lib64  -lmysqlcppconn -lmysqlclient -Wl,-rpath=${MYSQL_CONNECTOR_CPP_DIR}/lib64,-rpath-link=${MYSQL_CONNECTOR_CPP_DIR}/lib64

SOURCES = ${shell ls *.cpp}
OBJECTS = $(patsubst %.cpp,%.o, ${SOURCES})

all: ${TARGET}

${TARGET}: ${OBJECTS}
	${CXX} $^ ${LDFLAGS} -o $@ 

clean:
	rm -f ${OBJECTS} ${TARGET}

%.o: %.cpp
	${CXX} -c ${CXXFLAGS} -o $@ $<




