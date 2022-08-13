#参考：
http://qt-project.org/doc/qt-5/cmake-manual.html

#查看cmake在哪些目录中查找.cmake文件
cmake -S . -B build --debug-find

#QT5的某个目录中存在Qt5Config.cmake文件
export QT5_DIR=/home/tom/dist/qt5.12.9
export CMAKE_PREFIX_PATH=${CMAKE_PREFIX_PATH}:${QT5_DIR}/lib/cmake/Qt5


