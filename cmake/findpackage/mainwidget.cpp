#include "mainwidget.h"
#include <QDebug>

MainWidget::MainWidget(QWidget* p)
 : QWidget(p)
{

}

void MainWidget::slot_work(int a, int b)
{
  qDebug() << "slot_work:" << a << " , " << b;  
}

