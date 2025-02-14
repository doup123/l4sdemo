#-------------------------------------------------
#
# Project created by QtCreator 2015-07-08T05:11:23
#
#-------------------------------------------------

QT       += core gui widgets

TARGET = L4SDemo
CONFIG   -= app_bundle
CONFIG += c++11 release
TEMPLATE = app


SOURCES += src/main.cpp \
    src/datagenerator.cpp \
    src/mainwindow.cpp \
    src/trafficplot.cpp \
    src/client.cpp \
    src/trafficanalyzer.cpp \
    src/historyplot.cpp \
    src/filledcurve.cpp \
    src/curve.cpp \
    src/compltimesocket.cpp \
    src/linkaqm.cpp \
    src/demodata.cpp \
    src/trafficanalyzerstat.cpp

HEADERS += \
    src/datagenerator.h \
    src/mainwindow.h \
    src/trafficplot.h \
    src/client.h \
    src/trafficanalyzer.h \
    src/historyplot.h \
    src/filledcurve.h \
    src/curve.h \
    src/compltimesocket.h \
    src/linkaqm.h \
    src/demodata.h \
    src/trafficanalyzerstat.h \
    src/resources.h

INCLUDEPATH += ../../Qt5.0.1/qwt-6.1.4/src
INCLUDEPATH += ../traffic_analyzer

LIBS += -L../../Qt5.0.1/qwt-6.1.4/lib -lqwt
LIBS += -L../traffic_analyzer -lta -lpcap

QMAKE_POST_LINK += sh/setcap.sh
