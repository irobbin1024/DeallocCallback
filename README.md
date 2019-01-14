# DeallocCallback

你可以设置一个回调，当指定的对象 Dealloc 的时候，会自动调用。



## 安装

Cocoapods:

> pod 'DeallocCallback'

手动安装：

> 手动拖入 `DeallocCallback` 文件夹下的 `NSObject+DeallocCallback`

## 使用

```objective-c
NSObject * objWillDealloc = [NSObject new];
[objWillDealloc setDeallocCallback:^(NSString * _Nonnull objInfo) {
    NSLog(@"%@ did dealloc", objInfo);
}];
```

