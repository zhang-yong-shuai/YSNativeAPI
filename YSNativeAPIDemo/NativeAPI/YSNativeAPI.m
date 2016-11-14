//
//  YSNativeAPI.m
//
//  Created by 张永帅 on 16/1/26.
//  Copyright © 2016年 张永帅. All rights reserved.
//

#import "YSNativeAPI.h"

@implementation YSNativeAPI

#pragma mark - call methods
+ (void)configureWithWebView:(UIWebView *)webView andJSObject:(NSString *)jsObj {
    JSContext *jsContext = [webView valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"];
    YSNativeAPI *nativeObj = [YSNativeAPI new];
    jsContext[jsObj] = nativeObj;
}

#pragma mark - delegate methods
- (void)copy:(NSString *)copyStr {
    // copy string to pasteboard
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    pasteboard.string = copyStr;
}

@end
