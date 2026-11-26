package io.appmetrica.analytics.logger.common.impl;

import android.util.Log;
import defpackage.cl4;
import defpackage.eh;
import defpackage.g17;
import defpackage.n7;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class d {
    public static String a(String str, String str2, Object... objArr) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(' ');
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        if (str2 == null) {
            str2 = "";
        } else if (objArrCopyOf.length != 0) {
            try {
                Locale locale = Locale.US;
                Object[] objArrCopyOf2 = Arrays.copyOf(objArrCopyOf, objArrCopyOf.length);
                str2 = String.format(locale, str2, Arrays.copyOf(objArrCopyOf2, objArrCopyOf2.length));
            } catch (Throwable th) {
                StringBuilder sbD = n7.d("Attention!!! Invalid log format. See exception details above. Message: ", str2, "; arguments: ");
                sbD.append(Arrays.toString(objArrCopyOf));
                String string = sbD.toString();
                cl4 cl4Var = c.a;
                if (string.length() != 0) {
                    string = ((g17) c.a.getValue()).f(string, b.a);
                }
                str2 = string;
                Log.e("[LogMessageConstructor]", str2, th);
            }
        }
        cl4 cl4Var2 = c.a;
        if (str2.length() != 0) {
            str2 = ((g17) c.a.getValue()).f(str2, b.a);
        }
        return eh.c(new Object[]{Long.valueOf(Thread.currentThread().getId()), Thread.currentThread().getName(), str2}, 3, Locale.US, "[%d-%s] %s", sb);
    }

    public static String a(String str, Throwable th, String str2, Object... objArr) {
        if (str2 == null) {
            str2 = "";
        }
        return a(str, str2 + '\n' + Log.getStackTraceString(th), Arrays.copyOf(objArr, objArr.length));
    }
}
