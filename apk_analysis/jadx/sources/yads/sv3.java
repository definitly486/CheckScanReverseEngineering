package yads;

import android.text.TextUtils;
import android.util.Log;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class sv3 {
    public static final Object a = new Object();

    public static String a(String str, Throwable th) {
        String strReplace;
        synchronized (a) {
            try {
                if (th != null) {
                    Throwable cause = th;
                    while (true) {
                        if (cause == null) {
                            strReplace = Log.getStackTraceString(th).trim().replace("\t", "    ");
                            break;
                        }
                        if (cause instanceof UnknownHostException) {
                            strReplace = "UnknownHostException (no network)";
                            break;
                        }
                        cause = cause.getCause();
                    }
                } else {
                    strReplace = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (TextUtils.isEmpty(strReplace)) {
            return str;
        }
        StringBuilder sbC = defpackage.ti0.c(str, "\n  ");
        sbC.append(strReplace.replace("\n", "\n  "));
        sbC.append('\n');
        return sbC.toString();
    }

    public static void b(String str, String str2) {
        synchronized (a) {
            Log.e(str, str2);
        }
    }

    public static void c(String str, String str2) {
        synchronized (a) {
            Log.i(str, str2);
        }
    }

    public static void d(String str, String str2) {
        synchronized (a) {
            Log.w(str, str2);
        }
    }

    public static void a(String str, String str2) {
        synchronized (a) {
            Log.d(str, str2);
        }
    }
}
