QT       += core gui
QT       += opengl

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    mainwindow.cpp \
    glwidget.cpp \
    FigureControl.cpp \
    Line.cpp \
    LineControl.cpp \
    Point.cpp \
    Circle.cpp \
    CircleControl.cpp \
    Area.cpp \
    Ellipse.cpp \
    EllipseControl.cpp \
    Polygon.cpp \
    PolygonControl.cpp \
    CompFigure.cpp \
    SimpleFigure.cpp \
    CutWindow.cpp \
    gl3dwidget.cpp \
    Curve.cpp \
    CurveControl.cpp

HEADERS += \
    mainwindow.h \
    glwidget.h \
    Figure.h \
    FigureControl.h \
    Line.h \
    LineControl.h \
    Point.h \
    CircleControl.h \
    Circle.h \
    Area.h \
    Ellipse.h \
    EllipseControl.h \
    Polygon.h \
    PolygonControl.h \
    CompFigure.h \
    SimpleFigure.h \
    CutWindow.h \
    gl3dwidget.h \
    Curve.h \
    CurveControl.h

FORMS += \
    mainwindow.ui

TRANSLATIONS += \
    PaintWorks_zh_CN.ts

RESOURCES += \
    paintworks_resource.qrc

RC_FILE += paintworks.rc

LIBS += -lGL -lGLU

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
