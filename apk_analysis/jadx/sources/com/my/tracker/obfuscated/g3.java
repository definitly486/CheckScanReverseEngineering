package com.my.tracker.obfuscated;

import android.content.Context;
import android.text.TextUtils;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public abstract class g3 {
    private static volatile String a;

    public static String a(Context context) {
        String strK;
        String str = a;
        if (str != null) {
            return str;
        }
        synchronized (g3.class) {
            try {
                strK = a;
                if (strK == null) {
                    strK = t1.a(context).k();
                    if (TextUtils.isEmpty(strK)) {
                        strK = UUID.randomUUID().toString();
                        t1.a(context).k(strK);
                        a = strK;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return strK;
    }
}
