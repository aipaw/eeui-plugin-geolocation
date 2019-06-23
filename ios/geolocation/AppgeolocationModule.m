//
//  AppgeolocationModule.m
//  Pods
//

#import "AppgeolocationModule.h"
#import <WeexPluginLoader/WeexPluginLoader.h>
#import "AppGeolocation.h"

@interface AppgeolocationModule ()

@end

@implementation AppgeolocationModule

WX_PlUGIN_EXPORT_MODULE(geolocation, AppgeolocationModule)
WX_EXPORT_METHOD(@selector(get:))
WX_EXPORT_METHOD(@selector(watch::))
WX_EXPORT_METHOD(@selector(clearWatch:))

- (void)clearWatch:(WXModuleCallback)callback{
    [[AppGeolocation singletonManger] clearWatch:^(id error,id result) {
        if (callback) {
            if (error) {
                callback(error);
            } else {
                callback(result);
            }
        }
    }];
}

- (void)watch:(NSDictionary *)options :(WXModuleKeepAliveCallback)callback{
    [[AppGeolocation singletonManger] watch:options :^(id error,id result) {
        if (callback) {
            if (error) {
                callback(error, YES);
            } else {
                callback(result, YES);
            }
        }
    }];
}

- (void)get:(WXModuleCallback)callback{
    [[AppGeolocation singletonManger] get:^(id error,id result) {
        if (callback) {
            if (error) {
                callback(error);
            } else {
                callback(result);
            }
        }
    }];
}

@end
