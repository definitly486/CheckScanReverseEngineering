package com.google.android.gms.common.logging;

import android.util.Log;
import com.google.android.gms.common.internal.GmsLogger;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class Logger {
    public final String a;
    public final String b;
    public final int c;

    public Logger(String str, String... strArr) {
        String string;
        if (strArr.length == 0) {
            string = "";
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            for (String str2 : strArr) {
                if (sb.length() > 1) {
                    sb.append(StringUtils.COMMA);
                }
                sb.append(str2);
            }
            sb.append("] ");
            string = sb.toString();
        }
        this.b = string;
        this.a = str;
        new GmsLogger(str);
        int i = 2;
        while (i <= 7 && !Log.isLoggable(this.a, i)) {
            i++;
        }
        this.c = i;
    }

    public final String a(String str, Object... objArr) {
        if (objArr != null && objArr.length > 0) {
            str = String.format(Locale.US, str, objArr);
        }
        return this.b.concat(str);
    }

    public void d(String str, Object... objArr) {
        if (isLoggable(3)) {
            Log.d(this.a, a(str, objArr));
        }
    }

    public void e(String str, Throwable th, Object... objArr) {
        Log.e(this.a, a(str, objArr), th);
    }

    public String getTag() {
        return this.a;
    }

    public void i(String str, Object... objArr) {
        Log.i(this.a, a(str, objArr));
    }

    public boolean isLoggable(int i) {
        return this.c <= i;
    }

    public void v(String str, Throwable th, Object... objArr) {
        if (isLoggable(2)) {
            Log.v(this.a, a(str, objArr), th);
        }
    }

    public void w(String str, Object... objArr) {
        Log.w(this.a, a(str, objArr));
    }

    public void wtf(String str, Throwable th, Object... objArr) {
        Log.wtf(this.a, a(str, objArr), th);
    }

    public void e(String str, Object... objArr) {
        Log.e(this.a, a(str, objArr));
    }

    public void wtf(Throwable th) {
        Log.wtf(this.a, th);
    }

    public void v(String str, Object... objArr) {
        if (isLoggable(2)) {
            Log.v(this.a, a(str, objArr));
        }
    }
}
