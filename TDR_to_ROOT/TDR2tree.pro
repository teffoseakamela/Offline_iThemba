TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt
CONFIG+=sdk_no_version_check

QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.14

ROOTFLAGS = $$system( root-config --cflags )
ROOTLIBS = $$system( root-config --glibs )

QMAKE_CXXFLAGS = $$ROOTFLAGS -Wall -W -std=c++11 -fPIC -m64 -O3 -march=native
QMAKE_CFLAGS += -Wall -W -fPIC -m64 -O3 -march=native
LIBS += $$ROOTLIBS -L/Users/vetlewi/.local/lib

INCLUDEPATH += .


SOURCES += main.cpp \
    FileReader.cpp \
    experimentsetup.c \
    XIA_CFD.c \
    Calibration.cpp

HEADERS += \
    FileReader.h \
    experimentsetup.h \
    XIA_CFD.h \
    Calibration.h