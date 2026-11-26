package yads;

import android.content.Context;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class q50 {
    public static final Object a = new Object();
    public static volatile t50 b;

    public static t50 a(Context context) {
        if (b == null) {
            synchronized (a) {
                try {
                    if (b == null) {
                        b = new t50(bv3.a(context, "YadPreferenceFile"));
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        t50 t50Var = b;
        if (t50Var != null) {
            return t50Var;
        }
        defpackage.fg.c("Required value was null.");
        return null;
    }
}
