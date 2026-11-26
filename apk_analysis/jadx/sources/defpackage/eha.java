package defpackage;

import android.content.Context;
import android.text.TextUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class eha extends y14 {
    public HashMap o;

    public final synchronized Map U(Context context) {
        if (w4a.b()) {
            y14.r(null, "HuaweiOAIdDataProvider: You must not call collectData method from main thread");
            return new HashMap();
        }
        if (this.o != null) {
            return new HashMap(this.o);
        }
        this.o = new HashMap();
        n6a n6aVarA = n6a.a(context);
        try {
            Class.forName("com.huawei.hms.ads.identifier.AdvertisingIdClient");
            String strC = n6aVarA.c("hoaid");
            String strC2 = n6aVarA.c("hlimit");
            if (TextUtils.isEmpty(strC)) {
                V(context);
            } else {
                this.o.put(CommonUrlParts.HUAWEI_OAID, strC);
                this.o.put("oaid_tracking_enabled", strC2);
                w4a.d.execute(new z1(2, this, context));
            }
            return new HashMap(this.o);
        } catch (Throwable unused) {
            n6aVarA.b("hoaid", null);
            n6aVarA.b("hlimit", null);
            return new HashMap();
        }
    }

    public final void V(Context context) {
        String str;
        Object objInvoke;
        String str2;
        String str3 = null;
        try {
            Class<?> cls = Class.forName("com.huawei.hms.ads.identifier.AdvertisingIdClient");
            y14.r(null, "HuaweiOAIdDataProvider: Send huawei AId");
            Method method = cls.getMethod("getAdvertisingIdInfo", Context.class);
            if (method == null || (objInvoke = method.invoke(null, context)) == null) {
                str = null;
            } else {
                Method method2 = objInvoke.getClass().getMethod("getId", null);
                if (method2 != null) {
                    str2 = (String) method2.invoke(objInvoke, null);
                    try {
                        y14.r(null, "HuaweiOAIdDataProvider: Huawei AId - " + str2);
                    } catch (Throwable unused) {
                    }
                } else {
                    str2 = null;
                }
                Method method3 = objInvoke.getClass().getMethod("isLimitAdTrackingEnabled", null);
                if (method3 != null) {
                    Boolean bool = (Boolean) method3.invoke(objInvoke, null);
                    str = (!bool.booleanValue() ? 1 : 0) + "";
                    try {
                        StringBuilder sb = new StringBuilder("HuaweiOAIdDataProvider: Huawei ad tracking enabled - ");
                        sb.append(!bool.booleanValue());
                        y14.r(null, sb.toString());
                    } catch (Throwable unused2) {
                    }
                } else {
                    str = null;
                }
                str3 = str2;
            }
        } catch (Throwable unused3) {
        }
        synchronized (this) {
            HashMap map = this.o;
            try {
                if (str3 == null) {
                    map.remove(CommonUrlParts.HUAWEI_OAID);
                } else {
                    map.put(CommonUrlParts.HUAWEI_OAID, str3);
                }
                HashMap map2 = this.o;
                if (str == null) {
                    map2.remove("oaid_tracking_enabled");
                } else {
                    map2.put("oaid_tracking_enabled", str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        n6a.a(context).b("hoaid", str3);
        n6a.a(context).b("hlimit", str);
    }
}
