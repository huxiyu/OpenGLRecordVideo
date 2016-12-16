#-------------------------------------------------
#
# Project created by QtCreator 2016-12-09T15:39:54
#
#-------------------------------------------------

QT       += core gui  widgets core-private gui-private

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = helloCV
TEMPLATE = app


SOURCES += main.cpp \
    screencapture.cpp

HEADERS  += \
    screencapture.h

FORMS    +=


INCLUDEPATH+=D:\opencv\build\include\

#INCLUDEPATH+=D:\opencv\build\include\opencv\
#D:\opencv\build\include\opencv2\
#       D:\opencv\build\include

#LIBS+= C:\opencv\build\x64\vc12\lib\opencv_calib3d2413.lib\
#  C:\opencv\build\x64\vc12\lib\opencv_contrib2413.lib\
#  C:\opencv\build\x64\vc12\lib\opencv_core2413.lib\
#  C:\opencv\build\x64\vc12\lib\opencv_features2d2413.lib\
#  C:\opencv\build\x64\vc12\lib\opencv_flann2413.lib\
#  C:\opencv\build\x64\vc12\lib\opencv_gpu2413.lib\
#  C:\opencv\build\x64\vc12\lib\opencv_highgui2413.lib\
#  C:\opencv\build\x64\vc12\lib\opencv_imgproc2413.lib\
#  C:\opencv\build\x64\vc12\lib\opencv_legacy2413.lib\
#  C:\opencv\build\x64\vc12\lib\opencv_ml2413.lib\
#  C:\opencv\build\x64\vc12\lib\opencv_objdetect2413.lib\
#  C:\opencv\build\x64\vc12\lib\opencv_video2413.lib

#LIBS += -LC:\\d\\Code\\Qt\\Opencv\\helloCV\\bin\\lib \
#    libopencv_calib3d310.dll.a \
#    libopencv_highgui310.dll.a \
#    libopencv_imgcodecs310.dll.a \
#    libopencv_imgproc310.dll.a \
#    libopencv_videoio310.dll.a

#LIBS += -L./lib/libopencv_calib3d310.dll.a\
#LIBS += -L./lib/libopencv_highgui310.dll.a\
#LIBS += -L./lib/libopencv_imgcodecs310.dll.a\
#LIBS += -L./lib/libopencv_imgproc310.dll.a\
#LIBS += -L./lib/libopencv_videoio310.dll.a\

LIBS += -LD:/opencv/build/x86/mingw/lib \
 -lopencv_calib3d310.dll \
 -lopencv_highgui310.dll \
 -lopencv_imgcodecs310.dll \
 -lopencv_imgproc310.dll \
 -lopencv_videoio310.dll

#LIBS+= .\lib\libopencv_calib3d310.dll.a\
#  .\lib\libopencv_highgui310.dll.a\
#  .\lib\libopencv_imgcodecs310.dll.a\
#  .\lib\libopencv_imgproc310.dll.a\
#  .\lib\libopencv_videoio310.dll.a\

#LIBS+= D:\opencv\build\x86\mingw\lib\libopencv_calib3d310.dll.a\
#  D:\opencv\build\x86\mingw\lib\libopencv_core310.dll.a\
#  D:\opencv\build\x86\mingw\lib\libopencv_features2d310.dll.a\
#  D:\opencv\build\x86\mingw\lib\libopencv_flann310.dll.a\
#  D:\opencv\build\x86\mingw\lib\libopencv_highgui310.dll.a\
#  D:\opencv\build\x86\mingw\lib\libopencv_imgcodecs310.dll.a\
#  D:\opencv\build\x86\mingw\lib\libopencv_imgproc310.dll.a\
#  D:\opencv\build\x86\mingw\lib\libopencv_ml310.dll.a\
#  D:\opencv\build\x86\mingw\lib\libopencv_objdetect310.dll.a\
#  D:\opencv\build\x86\mingw\lib\libopencv_photo310.dll.a\
#  D:\opencv\build\x86\mingw\lib\libopencv_shape310.dll.a\
#  D:\opencv\build\x86\mingw\lib\libopencv_superres310.dll.a\
#  D:\opencv\build\x86\mingw\lib\libopencv_ts310.a\
#  D:\opencv\build\x86\mingw\lib\libopencv_video310.dll.a\
#  D:\opencv\build\x86\mingw\lib\libopencv_videoio310.dll.a\
#  D:\opencv\build\x86\mingw\lib\libopencv_videostab310.dll.a\
#  D:\opencv\build\x86\mingw\lib\libopencv_stitching310.dll.a
