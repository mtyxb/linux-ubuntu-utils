#include <QWidget>

class MainWidget : public QWidget
{
Q_OBJECT

public:
	MainWidget(QWidget* p = nullptr);

signals:
	void sig_work(int a, int b);

public slots:
	void slot_work(int a, int b);

};

