#include <QApplication>
#include <QDebug>
#include "mainwidget.h"

int main(int argc, char**argv)
{
  QApplication app(argc, argv);
  MainWidget w;
  w.resize(800, 600);
  w.show();
  return app.exec();
}

