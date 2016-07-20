<!--
ios 静态库制作
i386 armv6 armv7 armv7s arm64
No architectures to compile for (ONLY_ACTIVE_ARCH=YES, active arch=arm64, VALID_ARCHS=armv7 armv7s)
-->
## 一、设备对应的architecture：
_从XCode4.5开始，就不再支持armv6指令集。_

模拟器：
4s~5 : i386
5s~6plus : x86_64

真机：
armv6：iPhone 2G/3G，iPod 1G/2G
armv7：iPhone 3GS/4/4s，iPod 3G/4G，iPad 1G/2G/3G
armv7s：iPhone5, iPod5,iPhone5c (静态库只要支持了armv7，就可以跑在armv7s的架构上）
arm64: 5s~6plus

打印出该静态库支持的指令集
lipo -info xxxx.a
合并产生新的静态库:
lipo -create Debug-iphoneos/xxx.a Debug-iphonesimulator/xxx.a -output xxx.a

Build Active Architecture Only属性:

指明是否只编译当前连接设备所支持的指令集    
yes时它只编译当前的architecture版本   
no时，会编译所有的版本

编译出的版本是向下兼容的，比如你编译出来的是armv7版本的，iphone5也可以运行，但是armv6的设备就不能运行。
所以，一般debug的时候可以选择设置为yes，release的时候要改为no，以适应不同设备

Architectures：      
指明选定的Target要求被编译生成的二进制包所支持的指令集  
支持的指令集是通过编译生成对应的二进制数据包实现的，如果支持的指令集数目有多个，就会编译出包含多个指令集代码的数据包，从而会造成最终编译生成的包很大。

Valid Architectures：    
指明可能支持的指令集并非Architectures列表中指明的指令集都会被支持，Valid Architectures限制可能被支持的指令集的范围，即Valid Architectures和Architectures列表的交集，才是XCode最终生成二进制包所支持的指令集。

比如，将Architectures支持arm指令集设置为：armv7,armv7s，对应的Valid Architectures的支持的指令集设置为：armv7s,arm64，那么此时，XCode生成二进制包所支持的指令集只有armv7s 。

现在能在项目中使用动态库(iOS 8苹果开放了对动态 Framework)
[Apple官方文档说明](https://developer.apple.com/library/ios/documentation/DeveloperTools/Conceptual/WhatsNewXcode/Articles/xcode_6_0.html)
[动态库创建的实践](http://www.samirchen.com/create-a-framework/)
