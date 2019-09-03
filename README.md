<h2><center>RPAnchor</center></h2>

* iOS 9.0+

* pod V1.7.0+

* license MIT

<h2>Requirements</h2>

**RPAnchor is a chained programming library that encapsulates the system's NSLayoutAnchor. Used RPAnchor you can write more concise code.RPAnchor works on iOS 9+ and requires to build.**

<h2>Adding RPAnchor to your project</h2>

**CocoaPods is the recommended way to add RPAnchor to your project.**

**1、Add a pod entry for RPAnchor to your project Podfile**

```
pod 'RPAnchor'

```
or

```
pod 'RPAnchor', :git => 'https://github.com/dengfeng520/RPLayoutAnchor'
```

**2、Install the pod by running**

```
pod install
```

**3、 Include RPToastView wherever you need it with**

```Objective-C
#import "UIView+Anchor.h"
```
```
//--------------------- redView
UIView *redView = [[UIView alloc] init];
redView
.rp_addView(self.view)
.rp_safeAreaTop(0,self.view,rpSafeTop)
.rp_left(0,self.view,rpLeft)
.rp_right(0,self.view,rpRight)
.rp_safeAreaBottom(0,self.view,rpSafeBottom);
redView.backgroundColor = UIColor.redColor;

//--------------------- blueView
UIView *blueView = [[UIView alloc] init];
blueView
.rp_addView(redView)
.rp_top(70,redView,rpTop)
.rp_left(90,redView,rpLeft)
.rp_greaterWidth(80)
.rp_greaterHeight(80);
blueView.backgroundColor = UIColor.blueColor;

//--------------------- greenBtn
UIButton *greenBtn = [[UIButton alloc] init];
greenBtn
.rp_addView(redView)
.rp_centerX(0,redView,rpCenterX)
.rp_centerY(0,redView,rpCenterY)
.rp_size(180,45);
greenBtn.backgroundColor = UIColor.greenColor;

//--------------------- orangeView
UIView *orangeView = [[UIView alloc] init];
orangeView
.rp_addView(redView)
.rp_centerX(0,redView,rpCenterX)
.rp_multiplierWidth(0.7,redView,rpWidth)
.rp_top(20,blueView,rpBottom)
.rp_height(45);
orangeView.backgroundColor = UIColor.orangeColor;
```