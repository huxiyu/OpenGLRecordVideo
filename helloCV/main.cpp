#include <QScreen>
#include <QImage>
#include <QPixmap>
#include <QApplication>
#include <QDesktopWidget>
#include <QFile>
#include <QByteArray>
#include <QTimer>
#include <qdebug.h>

#include <iostream>
#include <string>
#include <vector>
using namespace std;

#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
using namespace cv;

int test() {
    Mat src = imread("C:/d/Code/Qt/Opencv/helloCV/test.jpg");
    if(src.empty())
    {
        cerr << "Please check the path of input image!" << endl;
        return -1;
    }
    const string winname = "src";
    namedWindow(winname, WINDOW_AUTOSIZE);
    imshow(winname, src);
    waitKey(0);
    destroyWindow(winname);
    return 0;
}



#include <screencapture.h>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    QString path = "C:/d/Code/Qt/Opencv/helloCV/helloCV.avi";
    //    QString path = "D:/helloCV/helloCV.avi";

    ScreenCapture *screenCapture =
            //            new ScreenCapture(1920, 1080, path);
            new ScreenCapture(800, 800, path);


    //    test();
    qDebug() << "end";
    return a.exec();
}
