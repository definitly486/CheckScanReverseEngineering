package yads;

import android.content.Context;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class u10 {
    public static volatile w10 a;
    public static final Object b = new Object();

    public static w10 a(Context context) {
        if (a == null) {
            synchronized (b) {
                try {
                    if (a == null) {
                        a = v10.a(context);
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        w10 w10Var = a;
        if (w10Var != null) {
            return w10Var;
        }
        defpackage.fg.c("Required value was null.");
        return null;
    }
}
