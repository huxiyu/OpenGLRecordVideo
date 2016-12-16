#include "screencapture.h"

ScreenCapture::ScreenCapture()
{

}

ScreenCapture::ScreenCapture(int width, int height, QString path)
{
    cvSize.width = width;
    cvSize.height = height;
    this->path = path;

    QFile file(path);
    if(file.exists())
    {
        if(!file.remove())
        {qDebug() << "delete fault";
        }

        qDebug() << "delete success";
    }
    file.close();

    char* chPath;
    QByteArray ba = path.toUtf8();
    chPath=ba.data();
    //    videoWriter = cvCreateVideoWriter(chPath,CV_FOURCC('X','V','I','D'),25,cvSize,1);
    //        videoWriter = cvCreateVideoWriter(chPath,-1,5,cvSize,1);
    videoWriter = cvCreateVideoWriter(chPath,CV_FOURCC('M','J','P','G'),5,cvSize);
    //        videoWriter = cvCreateVideoWriter(chPath,CV_FOURCC('D','I','V','X'),5,cvSize);
    //        videoWriter = cvCreateVideoWriter(chPath,CV_FOURCC('U','2','6','3'),30,cvSize);

    //    writer = new VideoWriter(chPath, CV_FOURCC('M', 'J', 'P', 'G'), 25.0, cvSize);
    writer.open(chPath, CV_FOURCC('M', 'J', 'P', 'G'), 5.0, cvSize);
    //        videoWriter = cvCreateVideoWriter(chPath,CV_FOURCC('M','P','J','L'),25,cvSize,1);
    //    grabScreen();

    timer = new QTimer(this);
    connect(timer, SIGNAL(timeout()), this, SLOT(grabScreen()));
    timer->start(16);

}

void ScreenCapture::grabScreen() {
    static int count = 0;
    QScreen *screen = QGuiApplication::primaryScreen();
    QPixmap pixmap = screen->grabWindow(QApplication::desktop()->winId(),0,0,cvSize.width,cvSize.height);
    QImage qimage = pixmap.toImage();

    //    qDebug() << "grabScreen";

    CvSize cvSize;
    cvSize.width = qimage.width();
    cvSize.height = qimage.height();
    IplImage* image = cvCreateImage(cvSize, 8, 3);
    image = QImageToIplImage(&qimage);
    //    qDebug() <<"channel :  " << count << image->nChannels;

    //测试图片是否转化成功
    //    cvNamedWindow("test",1);
    //    cvShowImage("test",image);
    //    cvWaitKey(0);
    //    cvDestroyWindow("test");
    count++;
    //    if(!cvWriteFrame(videoWriter, image)) {
    //        qDebug() << "write fault" << count;
    //    }
    QString s = QString("D:/helloCV/%1.png").arg(count);
    cvSaveImage(s.toStdString().data(),image);

    //    Mat frame(image);
    cv::Mat frame = cv::cvarrToMat(image);
    //    imshow("video", frame);
    writer << frame;

    //    qimage = qimage.scaled(QSize(960, 540));
    //    qimage.save("D:/helloCV/helloCV.jpg", "jpg", 100);
    cvReleaseImage(&image);
}

IplImage* ScreenCapture::QImageToIplImage(const QImage * qImage)
{
    int width = qImage->width();
    int height = qImage->height();
    CvSize Size;
    Size.height = height;
    Size.width = width;
    IplImage *IplImageBuffer = cvCreateImage(Size, IPL_DEPTH_8U, 3);
    for (int y = 0; y < height; ++y)
    {
        for (int x = 0; x < width; ++x)
        {
            QRgb rgb = qImage->pixel(x, y);
            cvSet2D(IplImageBuffer, y, x, CV_RGB(qRed(rgb), qGreen(rgb), qBlue(rgb)));
        }
    }
    return IplImageBuffer;
}
