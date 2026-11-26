package yads;

import android.util.Log;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public abstract class jn3 {
    public static final oa4 a;
    public static final String b;
    public static boolean c;

    static {
        oa4 oa4Var;
        oa4 oa4Var2 = oa4.b;
        if (oa4Var2 == null) {
            synchronized (oa4.c) {
                oa4Var = oa4.b;
                if (oa4Var == null) {
                    oa4Var = new oa4();
                    oa4.b = oa4Var;
                }
            }
            oa4Var2 = oa4Var;
        }
        a = oa4Var2;
        b = "YandexAds";
        c = true;
    }

    public static final void a(String str, Object... objArr) {
        boolean z;
        if (!c) {
            synchronized (u94.a) {
                z = u94.b;
            }
            if (!z) {
                return;
            }
        }
        Locale locale = Locale.US;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        String strA = a(String.format(locale, str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length)));
        if (c) {
            Log.e(b, strA);
        }
        if (u94.a.a()) {
            a.a(t94.ERROR, b, strA);
        }
    }

    public static final void b(String str, Object... objArr) {
        boolean z;
        if (!c) {
            synchronized (u94.a) {
                z = u94.b;
            }
            if (!z) {
                return;
            }
        }
        Locale locale = Locale.US;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        String strA = a(String.format(locale, str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length)));
        if (c) {
            Log.i(b, strA);
        }
        if (u94.a.a()) {
            a.a(t94.INFO, b, strA);
        }
    }

    public static final void c(String str, Object... objArr) {
        boolean z;
        if (!c) {
            synchronized (u94.a) {
                z = u94.b;
            }
            if (!z) {
                return;
            }
        }
        Locale locale = Locale.US;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        String strA = a(String.format(locale, str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length)));
        if (c) {
            Log.w(b, strA);
        }
        if (u94.a.a()) {
            a.a(t94.WARNING, b, strA);
        }
    }

    public static String a(String str) {
        return defpackage.bj.c("[Integration] ", str);
    }
}
