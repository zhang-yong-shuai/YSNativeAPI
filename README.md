# YSNativeAPI
YSNativeAPI实现了：webview加载的H5页面通过js对象调用原生方法。
使用范例：
```
// 调用此方法后，webView加载的H5页面就可以直接通过JS对象“Xing”来调用YSNativeAPI里的代理方法
    [YSNativeAPI configureWithWebView:self.webView andJSObject:@"Xing"];
```
