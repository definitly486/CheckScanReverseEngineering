package io.appmetrica.analytics.impl;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public abstract class H7 {
    public static final String a(C1233rh c1233rh) {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject().put("dId", c1233rh.getDeviceId()).put("uId", c1233rh.getUuid()).put("appVer", c1233rh.getAppVersion()).put(RemoteConfigConstants.RequestFieldKey.APP_BUILD, c1233rh.getAppBuildNumber()).put("kitBuildType", c1233rh.getAnalyticsSdkBuildType()).put("osVer", c1233rh.getOsVersion()).put("osApiLev", c1233rh.getOsApiLevel()).put("lang", c1233rh.getLocale()).put("root", c1233rh.getDeviceRootStatus()).put("app_debuggable", ((Y5) c1233rh).a).put(CommonUrlParts.APP_FRAMEWORK, c1233rh.getAppFramework()).put("attribution_id", c1233rh.r).put("analyticsSdkVersionName", c1233rh.getAnalyticsSdkVersionName()).put("kitBuildNumber", c1233rh.getAnalyticsSdkBuildNumber());
        } catch (Throwable unused) {
            jSONObject = new JSONObject();
        }
        return jSONObject.toString();
    }
}
