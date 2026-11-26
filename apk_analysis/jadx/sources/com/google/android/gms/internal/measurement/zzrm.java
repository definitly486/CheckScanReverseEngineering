package com.google.android.gms.internal.measurement;

import android.util.Log;
import com.tapjoy.TJAdUnitConstants;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
public final class zzrm {
    public static final Method a;

    static {
        Method method = null;
        try {
            try {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                method = cls.getMethod("get", String.class, String.class);
                cls.getMethod("getInt", String.class, Integer.TYPE);
                cls.getMethod("getLong", String.class, Long.TYPE);
                cls.getMethod("getBoolean", String.class, Boolean.TYPE);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            a = method;
        }
    }

    public static String zza(String str, String str2) {
        try {
            return (String) a.invoke(null, "tiktok_systrace", TJAdUnitConstants.String.FALSE);
        } catch (Exception e) {
            Log.e("SystemProperties", "get error", e);
            return TJAdUnitConstants.String.FALSE;
        }
    }
}
