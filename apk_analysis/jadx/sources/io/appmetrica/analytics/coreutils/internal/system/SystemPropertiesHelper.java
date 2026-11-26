package io.appmetrica.analytics.coreutils.internal.system;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public final class SystemPropertiesHelper {
    public static final SystemPropertiesHelper INSTANCE = new SystemPropertiesHelper();

    private SystemPropertiesHelper() {
    }

    public static final String readSystemProperty(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties", true, Context.class.getClassLoader());
            Object objInvoke = cls.getMethod("get", String.class).invoke(cls, str);
            String str2 = objInvoke instanceof String ? (String) objInvoke : null;
            return str2 == null ? "" : str2;
        } catch (Exception unused) {
            return "";
        }
    }
}
