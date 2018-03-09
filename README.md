# KinRain
主工程

新建子工程：
1、pod引入公共库‘KRPublishLibrary’
2、Podfile文件里注意要写上官方及私有库地址
      source 'https://github.com/CocoaPods/Specs.git'
      source 'https://github.com/KinRainModulization/KR_PrivatePods.git'
3、继承BaseViewController的类 .h头文件将#import <KRPublishLibrary/KRPublishLibrary.h>更改为#import <KRPublishLibrary/BaseViewController.h>
4、 Targets-Build Settings搜索prefix header添加
      $(SRCROOT)/Pods/KRPublishLibrary/KRPublishLibrary/KRPublishLibrary/PrefixHeader.pch/
