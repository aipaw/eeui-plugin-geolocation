package eeui.android.geolocation.entry;

import android.content.Context;

import com.taobao.weex.WXSDKEngine;
import com.taobao.weex.common.WXException;

import app.eeui.framework.extend.annotation.ModuleEntry;
import eeui.android.geolocation.module.AppgeolocationModule;

@ModuleEntry
public class geolocationEntry {

    /**
     * APP启动会运行此函数方法
     * @param content Application
     */
    public void init(Context content) {

        //1、注册weex模块
        try {
            WXSDKEngine.registerModule("geolocation", AppgeolocationModule.class);
        } catch (WXException e) {
            e.printStackTrace();
        }
    }

}
