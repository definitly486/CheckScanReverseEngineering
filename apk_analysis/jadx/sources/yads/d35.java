package yads;

import android.util.Log;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public abstract class d35 {
    public static final oa4 a;

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
    }

    public static void a(String str, Object... objArr) {
        boolean z;
        if (!cp3.a) {
            synchronized (u94.a) {
                z = u94.b;
            }
            if (!z) {
                return;
            }
        }
        Locale locale = Locale.US;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        String str2 = String.format(locale, str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
        if (cp3.a) {
            Log.w("Yandex Mobile Ads", str2);
        }
        if (u94.a.a()) {
            a.a(t94.WARNING, "Yandex Mobile Ads", str2);
        }
    }
}
