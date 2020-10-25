# PaintWorks

## Disclaimer

The original repo is [here](https://github.com/zsnjuts/PaintWorks). I just add support for Linux thun can run in **Ubuntu 20.04**.



系统使用说明书[在这里](docs/151220162_系统使用说明书.pdf)
系统技术报告[在这里](docs/151220162_系统技术报告.pdf)

![运行图](docs/screenshot.png)



## 已实现的功能

* 直线绘制
* 圆的绘制+填充
* 椭圆绘制
* 多边形绘制+填充
* 已实现基础的UI交互，切换图形绘制模式
* 已实现markDraw，为各Figure提供被选中的虚线矩形框显示
* 已实现**图形编辑**
* 已实现**图形变换**
  - 平移：已实现各图形的平移（通过点的平移实现）
  - 旋转：已实现各图形的旋转（其中圆的旋转保持不变，椭圆旋转只能转90度）
  - 缩放：已实现各图形的缩放（直线以中点为准，圆和椭圆以中心为准，多边形以绘制的第一个点为准）
* 已实现**图形裁剪**
  * 只实现了直线与多边形的裁剪
  * 直线裁剪为梁友栋-Barsky裁剪算法，多边形裁剪为单边裁剪算法
  * 对所有直线与多边形进行裁剪
* 已实现**存储图形数据**
  
  * 保存为bmp格式
* 已实现**3D六面体显示**
  * 使用OpenGL库函数
  * 可以使用键盘控制左右旋转
* 已实现UI基础交互

  * 放大缩小

    对所有图形同时放大缩小，缩放基准点为各图形自己的基准点，而非鼠标

  * 填充

  * 裁剪

  * 平移

    * 直线拖动中点平移
    * 圆拖动圆心平移
    * 椭圆拖动中心平移
    * 多边形拖动中心平移

  * 聚焦（点击图形让被选中图形在最高图层显示）

    * 直线
    * 圆
    * 椭圆
    * 多边形

  * 旋转：拖动handle旋转

    * 点：添加了三个相关支持函数
    * 直线：使用点的支持函数实现
    * 圆：只改变handle，其余均不动
    * 椭圆：handle旋转至水平或垂直时，旋转90度
    * 多边形：按键时不改变handle


## 下一步工作



## 目前进展

* 已实现缩放改为对单个图形进行缩放，裁剪改为对单个图形进行裁剪
* 已实现交互界面新增功能
  * 平移：拖动矩形中心点
  * 旋转：拖动延伸出来的点
* 已实现添加删除图形、清空图形按钮 
* 已添加图形选中
  * 直线：检测轮廓点
  * 圆、椭圆、多边形：检测轮廓点+填充点
  * 画布的curCtrl变化之后，通过信号-槽机制从widget向Mainwindow发送消息，改变当前绘图模式
* 已添加颜色控制按钮
  * 选择颜色之后，线条与填充均为这种颜色
* **曲线绘制&编辑&变换**
  * 已实现曲线绘制+拖动控制点编辑
  * 曲线变换
    * 平移
    * 缩放
    * 旋转
* 已实现选取
  * isOn*函数检测该点是否在图形上
  * isOn()检测该点是否在图形或标记点(markPoints,center,handle)上，isOnPlain()检测该点是否在图形本身上(不包括标记点)


## 可以改进的地方



## tips

* 解决了MainWindow直接控制当前GLWidget的问题

  使用`dynamic_cast<GLWidget*>()`即可，可以不必再使用GLWidget的数组canvases(已去掉)

## bug

* ~~标签页关闭之后切换图形绘制模式会导致程序崩溃~~ 已使用dynamic_cast解决

  应该让QMdiSubWindow在关闭时delete掉GLWidget，可能需要重写QMdiSubWindow的` virtual void	closeEvent(QCloseEvent * closeEvent)` 函数，最好是将相关信号关联到Mainwindow的一个槽函数，省得再写QMdiSubWindow了。

* ~~椭圆刚生成的时候handle有问题~~ 已解决

