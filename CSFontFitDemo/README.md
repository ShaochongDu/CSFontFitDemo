# CSFontFitDemo

配置plist文件（FontSizeScale.plist）实现XIB及代码适配文字大小
适用控件：UIButton/UITextField/UILabel/UISearchBar/UITextView

1、通过runtime机制设置XIB上控件的文字大小，无需代码设置，类目中读取plist配置自动设置
2、若使用代码创建则需要使用类目方法进行设置：
如：
self.myTextField.font = [UIFont scaleSystemFontOfSize:10];

self.myLabel.font = [UIFont scaleFontWithName:@"ArialHebrew" size:10];

