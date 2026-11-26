package com.google.android.gms.common.internal;

import android.util.Log;

/* JADX INFO: loaded from: classes4.dex */
public final class GmsLogger {
    public final String a;
    public final String b;

    public GmsLogger(String str, String str2) {
        Preconditions.checkNotNull(str, "log tag cannot be null");
        Preconditions.checkArgument(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, 23);
        this.a = str;
        this.b = (str2 == null || str2.length() <= 0) ? null : str2;
    }

    public final String a(String str) {
        String str2 = this.b;
        return str2 == null ? str : str2.concat(str);
    }

    public boolean canLog(int i) {
        return Log.isLoggable(this.a, i);
    }

    public boolean canLogPii() {
        return false;
    }

    public void d(String str, String str2) {
        if (canLog(3)) {
            Log.d(str, a(str2));
        }
    }

    public void e(String str, String str2) {
        if (canLog(6)) {
            Log.e(str, a(str2));
        }
    }

    public void efmt(String str, String str2, Object... objArr) {
        if (canLog(6)) {
            String strConcat = String.format(str2, objArr);
            String str3 = this.b;
            if (str3 != null) {
                strConcat = str3.concat(strConcat);
            }
            Log.e(str, strConcat);
        }
    }

    public void i(String str, String str2) {
        if (canLog(4)) {
            Log.i(str, a(str2));
        }
    }

    public void pii(String str, String str2) {
    }

    public void pii(String str, String str2, Throwable th) {
    }

    public void v(String str, String str2) {
        if (canLog(2)) {
            Log.v(str, a(str2));
        }
    }

    public void w(String str, String str2) {
        if (canLog(5)) {
            Log.w(str, a(str2));
        }
    }

    public void wfmt(String str, String str2, Object... objArr) {
        if (canLog(5)) {
            String strConcat = String.format(str2, objArr);
            String str3 = this.b;
            if (str3 != null) {
                strConcat = str3.concat(strConcat);
            }
            Log.w(this.a, strConcat);
        }
    }

    public void wtf(String str, String str2, Throwable th) {
        if (canLog(7)) {
            Log.e(str, a(str2), th);
            Log.wtf(str, a(str2), th);
        }
    }

    public void d(String str, String str2, Throwable th) {
        if (canLog(3)) {
            Log.d(str, a(str2), th);
        }
    }

    public void e(String str, String str2, Throwable th) {
        if (canLog(6)) {
            Log.e(str, a(str2), th);
        }
    }

    public void i(String str, String str2, Throwable th) {
        if (canLog(4)) {
            Log.i(str, a(str2), th);
        }
    }

    public void v(String str, String str2, Throwable th) {
        if (canLog(2)) {
            Log.v(str, a(str2), th);
        }
    }

    public void w(String str, String str2, Throwable th) {
        if (canLog(5)) {
            Log.w(str, a(str2), th);
        }
    }

    public GmsLogger(String str) {
        this(str, null);
    }
}
