#ifndef SCREENCAPTURE_H
#define SCREENCAPTURE_H

#include <QScreen>
#include <QImage>
#include <QPixmap>
#include <QApplication>
#include <QDesktopWidget>
#include <QFile>
#include <QByteArray>
#include <QTimer>
#include <qdebug.h>

#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
using namespace cv;

class ScreenCapture: QObject
{
    Q_OBJECT

public:
//    QFile file(path);
    QTimer* timer;
    CvVideoWriter  *videoWriter;
    VideoWriter writer;
    CvSize cvSize;
    QString path;
public:
    IplImage *QImageToIplImage(const QImage * qImage);


signals:

public slots:
    void grabScreen();

public:
    ScreenCapture();
    ScreenCapture(int width, int height, QString path);
};

#endif // SCREENCAPTURE_H
