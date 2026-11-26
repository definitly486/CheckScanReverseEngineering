package com.my.tracker.obfuscated;

import android.util.Log;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b3 {
    private static volatile boolean a = false;

    public static void a(String str) {
        if (a) {
            if (str == null) {
                str = "null";
            }
            Log.d("[myTracker]", str);
        }
    }

    public static void b(String str) {
        if (a) {
            if (str == null) {
                str = "null";
            }
            Log.e("[myTracker]", str);
        }
    }

    public static void c(String str) {
        if (Log.isLoggable("[myTracker]", 4)) {
            if (str == null) {
                str = "null";
            }
            Log.i("[myTracker]", str);
        }
    }

    public static void d(String str) {
        if (Log.isLoggable("[myTracker]", 5)) {
            if (str == null) {
                str = "null";
            }
            Log.w("[myTracker]", str);
        }
    }

    public static void a(boolean z) {
        a = z;
    }

    public static void b(String str, Throwable th) {
        if (a) {
            if (str == null) {
                str = "null";
            }
            Log.e("[myTracker]", str, th);
        }
    }

    public static boolean a() {
        return a;
    }

    public static void a(String str, Throwable th) {
        if (a) {
            if (str == null) {
                str = "null";
            }
            Log.d("[myTracker]", str, th);
        }
    }
}
