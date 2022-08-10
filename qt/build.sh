#!/bin/bash

QT_INSTALL_DIR=$PWD/dist\qtbase
QT_SOURCE_PATH=$PWD/../qt-everywhere-src-5.12.9

mkdir -p ${QT_INSTALL_DIR}

${QT_SOURCE_PATH}/configure \
         -prefix ${QT_INSTALL_DIR} \
	-opensource -confirm-license \
	-shared \
	-debug \
	-nomake tests -nomake examples \
	-recheck-all -c++std c++1z \
	-dbus-linked -dbus-runtime






