<h2><center>RPAnchor</center></h2>

* iOS 9.0+

* pod V1.7.0+

* license MIT

<h2>Requirements</h2>

**RPAnchor is a chained programming library that encapsulates the system's 'NSLayoutConstraint'. Used RPAnchor you can clean coding.**

![demo1](https://github.com/dengfeng520/RPLayoutAnchor/blob/master/demo1.png?raw=true)

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

**3、 Include RPAnchor wherever you need it with**

```Objective-C
#import "UIView+Anchor.h"
```

<h2>Usage</h2>

```Objective-C
//---------------------
UIImageView *fristGrilImg = [[UIImageView alloc] init];
fristGrilImg.rp_addView(self.view)
.rp_safeAreaTop(20,self.view,rpSafeTop)
.rp_centerX(0,self.view,rpCenterX)
.rp_height(250)
.rp_multiplierWidth(1.45,fristGrilImg,rpHeight);
fristGrilImg.image = [UIImage imageNamed:@"one_gril"];
fristGrilImg.backgroundColor = UIColor.redColor;

//---------------------
UIImageView *secondGrilImg = [[UIImageView alloc] init];
[self.view addSubview:secondGrilImg];
secondGrilImg.rp_config()
.rp_top(10,fristGrilImg,rpBottom)
.rp_centerX(0,self.view,rpCenterX)
.rp_width(280)
.rp_multiplierHeight(1.46,secondGrilImg,rpWidth);
secondGrilImg.image = [UIImage imageNamed:@"second_gril"];
```


```Objective-C
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

![demo.png](https://github.com/dengfeng520/RPLayoutAnchor/blob/master/demo.png?raw=true)