#-------------------------------------------------
#
# Project created by QtCreator 2016-12-11T00:33:23
#
#-------------------------------------------------

QT       += core gui widgets opengl

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = OpenGL
TEMPLATE = app


SOURCES += main.cpp \
    widget.cpp

HEADERS  += \
    widget.h

FORMS    += wglwidget.ui

INCLUDEPATH+=c:\opencv\build\include\

LIBS+= C:\opencv\build\x64\vc12\lib\opencv_calib3d2413.lib\
  C:\opencv\build\x64\vc12\lib\opencv_contrib2413.lib\
  C:\opencv\build\x64\vc12\lib\opencv_core2413.lib\
  C:\opencv\build\x64\vc12\lib\opencv_features2d2413.lib\
  C:\opencv\build\x64\vc12\lib\opencv_flann2413.lib\
  C:\opencv\build\x64\vc12\lib\opencv_gpu2413.lib\
  C:\opencv\build\x64\vc12\lib\opencv_highgui2413.lib\
  C:\opencv\build\x64\vc12\lib\opencv_imgproc2413.lib\
  C:\opencv\build\x64\vc12\lib\opencv_legacy2413.lib\
  C:\opencv\build\x64\vc12\lib\opencv_ml2413.lib\
  C:\opencv\build\x64\vc12\lib\opencv_objdetect2413.lib\
  C:\opencv\build\x64\vc12\lib\opencv_video2413.lib

#LIBS+= C:\opencv\build\x86\vc12\lib\opencv_calib3d2413.lib\
#  C:\opencv\build\x86\vc12\lib\opencv_contrib2413.lib\
#  C:\opencv\build\x86\vc12\lib\opencv_core2413.lib\
#  C:\opencv\build\x86\vc12\lib\opencv_features2d2413.lib\
#  C:\opencv\build\x86\vc12\lib\opencv_flann2413.lib\
#  C:\opencv\build\x86\vc12\lib\opencv_gpu2413.lib\
#  C:\opencv\build\x86\vc12\lib\opencv_highgui2413.lib\
#  C:\opencv\build\x86\vc12\lib\opencv_imgproc2413.lib\
#  C:\opencv\build\x86\vc12\lib\opencv_legacy2413.lib\
#  C:\opencv\build\x86\vc12\lib\opencv_ml2413.lib\
#  C:\opencv\build\x86\vc12\lib\opencv_objdetect2413.lib\
#  C:\opencv\build\x86\vc12\lib\opencv_video2413.lib
