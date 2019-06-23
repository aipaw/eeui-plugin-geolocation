//
//  AppGeolocation.h
//
//  Created by huangyake on 17/1/7.
//  Copyright © 2017 Instapp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>
#import <CoreLocation/CoreLocation.h>

typedef void (^AppCallback)(id error,id result);


@interface AppGeolocation : NSObject<CLLocationManagerDelegate>

+ (id)singletonManger;
//获取一次地理位置
- (void)get:(AppCallback)back;
//持续获取地理位置
- (void)watch:(NSDictionary *)options :(AppCallback)back;
//清除持续定位
- (void)clearWatch:(AppCallback)back;
//关闭
- (void)close;

@end
