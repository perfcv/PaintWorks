#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include "glwidget.h"
#include "gl3dwidget.h"
#include <QMainWindow>
#include <QMenu>
#include <QTextEdit>
#include <QVector>
#include <QFileDialog>
#include <QColorDialog>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

public slots:
    void on_changeMode(Mode m); //从GLWidget接收信号

private slots:
    void on_action_New_triggered();

    void on_actionLine_triggered();

    void on_actionCircle_triggered();

    void on_actionEllipse_triggered();

    void on_actionPolygon_triggered();

    void on_actionCut_triggered();

    void on_actionFill_triggered();

    void on_actionScalePlus_triggered();

    void on_actionScaleMinus_triggered();

    void on_actionSave_triggered();

    void on_action_3D_triggered();

    void on_actionDelete_triggered();

    void on_actionClear_triggered();

    void on_actionPickColor_triggered();

    void on_actionCurve_triggered();

    void on_action_Q_triggered();

private:
    Mode m;
    Ui::MainWindow *ui;

    void setMode(Mode m);
};

#endif // MAINWINDOW_H
