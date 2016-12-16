#include "widget.h"
#include <QApplication>


#include <iostream>
#include <string>
#include <vector>
using namespace std;

//#include <opencv2/core/core.hpp>
//#include <opencv2/highgui/highgui.hpp>
//#include <opencv2/imgproc/imgproc.hpp>
//using namespace cv;

int test() {
//    Mat src = imread("C:/d/Code/Qt/Opencv/helloCV/test.jpg");
//    if(src.empty())
//    {
//        cerr << "Please check the path of input image!" << endl;
//        return -1;
//    }
//    const string winname = "src";
//    namedWindow(winname, WINDOW_AUTOSIZE);
//    imshow(winname, src);
//    waitKey(0);
//    destroyWindow(winname);
    return 0;
}


int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    GLWidget w;
    w.show();

//    test();

    return a.exec();
}
