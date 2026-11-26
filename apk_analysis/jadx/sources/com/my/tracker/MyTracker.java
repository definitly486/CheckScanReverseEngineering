package com.my.tracker;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.text.TextUtils;
import com.my.tracker.ads.AdEvent;
import com.my.tracker.miniapps.MiniAppEvent;
import com.my.tracker.obfuscated.b3;
import com.my.tracker.obfuscated.c3;
import com.my.tracker.obfuscated.g1;
import com.my.tracker.obfuscated.g3;
import com.my.tracker.plugins.MyTrackerPluginConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class MyTracker {
    public static final String VERSION = "3.6.0";
    private static final List a = Collections.synchronizedList(new ArrayList());
    private static volatile g1 b;

    public interface AttributionListener {
        void onReceiveAttribution(MyTrackerAttribution myTrackerAttribution);
    }

    public static final class a {
        public static final c3 a;
        static final MyTrackerConfig b;

        static {
            c3 c3VarY = c3.y();
            a = c3VarY;
            b = MyTrackerConfig.a(c3VarY);
        }
    }

    private static void a(int i, boolean z) {
        g1 g1Var = b;
        if (g1Var == null) {
            b3.b("MyTracker hasn't been initialized yet. You should call MyTracker.initTracker() method first");
        } else {
            g1Var.a(i, z);
        }
    }

    public static void applyPlugin(MyTrackerPluginConfig myTrackerPluginConfig) {
        a.add(myTrackerPluginConfig);
    }

    public static void flush() {
        g1 g1Var = b;
        if (g1Var == null) {
            b3.b("MyTracker hasn't been initialized yet. You should call MyTracker.initTracker() method first");
        } else {
            g1Var.a();
        }
    }

    public static String getInstanceId(Context context) {
        return g3.a(context);
    }

    public static MyTrackerConfig getTrackerConfig() {
        return a.b;
    }

    public static MyTrackerParams getTrackerParams() {
        return a.a.m();
    }

    public static String handleDeeplink(Intent intent) {
        g1 g1Var = b;
        if (g1Var != null) {
            return g1Var.a(intent);
        }
        b3.b("MyTracker hasn't been initialized yet. You should call MyTracker.initTracker() method first");
        return null;
    }

    public static void incrementEventTimeSpent(int i) {
        g1 g1Var = b;
        if (g1Var == null) {
            b3.b("MyTracker hasn't been initialized yet. You should call MyTracker.initTracker() method first");
        } else {
            g1Var.a(i);
        }
    }

    public static void initTracker(String str, Application application) {
        if (TextUtils.isEmpty(str)) {
            b3.b("MyTracker initialization failed: id can't be empty");
            return;
        }
        if (b != null) {
            b3.c("MyTracker has already been initialized");
            return;
        }
        synchronized (MyTracker.class) {
            try {
                if (b != null) {
                    b3.c("MyTracker has already been initialized");
                    return;
                }
                c3 c3Var = a.a;
                ArrayList arrayList = new ArrayList(a);
                g1 g1VarA = g1.a(str, c3Var, application);
                g1VarA.a(arrayList);
                b = g1VarA;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean isDebugMode() {
        return b3.a();
    }

    public static void onActivityResult(int i, Intent intent) {
        g1 g1Var = b;
        if (g1Var == null) {
            b3.b("MyTracker hasn't been initialized yet. You should call MyTracker.initTracker() method first");
        } else {
            g1Var.a(i, intent);
        }
    }

    public static void onPurchasesUpdated(int i, List<Object> list) {
        g1 g1Var = b;
        if (g1Var == null) {
            b3.b("MyTracker hasn't been initialized yet. You should call MyTracker.initTracker() method first");
        } else {
            g1Var.a(i, list);
        }
    }

    public static void setAttributionListener(AttributionListener attributionListener, Handler handler) {
        a.a.a(attributionListener, handler);
    }

    public static void setDebugMode(boolean z) {
        b3.a(z);
    }

    public static void startAnytimeTimeSpent(int i) {
        a(i, true);
    }

    public static void startForegroundTimeSpent(int i) {
        a(i, false);
    }

    public static void stopAnytimeTimeSpent(int i) {
        g1 g1Var = b;
        if (g1Var == null) {
            b3.b("MyTracker hasn't been initialized yet. You should call MyTracker.initTracker() method first");
        } else {
            g1Var.b(i, true);
        }
    }

    public static void stopForegroundTimeSpent(int i) {
        g1 g1Var = b;
        if (g1Var == null) {
            b3.b("MyTracker hasn't been initialized yet. You should call MyTracker.initTracker() method first");
        } else {
            g1Var.b(i, false);
        }
    }

    public static void trackAdEvent(AdEvent adEvent) {
        g1 g1Var = b;
        if (g1Var == null) {
            b3.b("MyTracker hasn't been initialized yet. You should call MyTracker.initTracker() method first");
        } else {
            g1Var.a(adEvent);
        }
    }

    public static void trackAppGalleryPurchaseEvent(Object obj, String str, String str2, String str3, Map<String, String> map) {
        g1 g1Var = b;
        if (g1Var == null) {
            b3.b("MyTracker hasn't been initialized yet. You should call MyTracker.initTracker() method first");
        } else {
            g1Var.a(obj, str, str2, str3, map);
        }
    }

    public static void trackEvent(String str, Map<String, String> map) {
        g1 g1Var = b;
        if (g1Var == null) {
            b3.b("MyTracker hasn't been initialized yet. You should call MyTracker.initTracker() method first");
        } else {
            g1Var.a(str, map);
        }
    }

    public static void trackInviteEvent(Map<String, String> map) {
        g1 g1Var = b;
        if (g1Var == null) {
            b3.b("MyTracker hasn't been initialized yet. You should call MyTracker.initTracker() method first");
        } else {
            g1Var.a(map);
        }
    }

    public static void trackLaunchManually(Activity activity) {
        g1 g1Var = b;
        if (g1Var == null) {
            b3.b("MyTracker hasn't been initialized yet. You should call MyTracker.initTracker() method first");
        } else {
            g1Var.a(activity);
        }
    }

    public static void trackLevelEvent(Map<String, String> map) {
        g1 g1Var = b;
        if (g1Var == null) {
            b3.b("MyTracker hasn't been initialized yet. You should call MyTracker.initTracker() method first");
        } else {
            g1Var.b(map);
        }
    }

    public static void trackLoginEvent(String str, String str2, Map<String, String> map) {
        g1 g1Var = b;
        if (g1Var == null) {
            b3.b("MyTracker hasn't been initialized yet. You should call MyTracker.initTracker() method first");
        } else {
            g1Var.a(str, str2, map);
        }
    }

    public static void trackMiniAppEvent(MiniAppEvent miniAppEvent) {
        g1 g1Var = b;
        if (g1Var == null) {
            b3.b("MyTracker hasn't been initialized yet. You should call MyTracker.initTracker() method first");
        } else {
            g1Var.a(miniAppEvent);
        }
    }

    public static void trackPurchaseEvent(JSONObject jSONObject, JSONObject jSONObject2, String str, Map<String, String> map) {
        g1 g1Var = b;
        if (g1Var == null) {
            b3.b("MyTracker hasn't been initialized yet. You should call MyTracker.initTracker() method first");
        } else {
            g1Var.a(jSONObject, jSONObject2, str, map);
        }
    }

    public static void trackRegistrationEvent(String str, String str2, Map<String, String> map) {
        g1 g1Var = b;
        if (g1Var == null) {
            b3.b("MyTracker hasn't been initialized yet. You should call MyTracker.initTracker() method first");
        } else {
            g1Var.b(str, str2, map);
        }
    }

    public static void setAttributionListener(AttributionListener attributionListener) {
        setAttributionListener(attributionListener, null);
    }

    public static void trackEvent(String str) {
        trackEvent(str, null);
    }

    public static void trackInviteEvent() {
        trackInviteEvent(null);
    }

    public static void trackLevelEvent() {
        trackLevelEvent(null);
    }

    public static void trackLoginEvent(String str, String str2) {
        trackLoginEvent(str, str2, null);
    }

    public static void trackPurchaseEvent(JSONObject jSONObject, JSONObject jSONObject2, String str) {
        trackPurchaseEvent(jSONObject, jSONObject2, str, null);
    }

    public static void trackRegistrationEvent(String str, String str2) {
        trackRegistrationEvent(str, str2, null);
    }

    public static void trackLevelEvent(int i, Map<String, String> map) {
        g1 g1Var = b;
        if (g1Var == null) {
            b3.b("MyTracker hasn't been initialized yet. You should call MyTracker.initTracker() method first");
        } else {
            g1Var.a(i, map);
        }
    }
}
