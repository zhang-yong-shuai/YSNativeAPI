//
//  YSNativeAPI.h
//
//  Created by 张永帅 on 16/1/26.
//  Copyright © 2016年 张永帅. All rights reserved.
//

/**
 *  此类实现了：H5页面JS方法调用原生方法
 */

#import <UIKit/UIKit.h>
#import <JavaScriptCore/JavaScriptCore.h>

/// js方法需要调用的方法均需要在此协议中实现
@protocol YSNativeAPIDelegate <JSExport>

/// 复制字符串到剪切板
- (void)copy:(NSString *)copyStr;

@end

@interface YSNativeAPI : NSObject <YSNativeAPIDelegate>

/**
 * @brief 配置方法
 * @param webView -- 调用js方法的webview
 *        jsObj   -- js对象名称
 * @返回值 无
 */
+ (void)configureWithWebView:(UIWebView *)webView andJSObject:(NSString *)jsObj;

@end
