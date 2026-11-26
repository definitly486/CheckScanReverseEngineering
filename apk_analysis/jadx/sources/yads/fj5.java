package yads;

import android.content.Context;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class fj5 {
    public static volatile gj5 a;
    public static final Object b = new Object();

    public static gj5 a(Context context) {
        if (a == null) {
            synchronized (b) {
                try {
                    if (a == null) {
                        a = new gj5(bv3.a(context, "YadPreferenceFile"));
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        gj5 gj5Var = a;
        if (gj5Var != null) {
            return gj5Var;
        }
        defpackage.fg.c("Required value was null.");
        return null;
    }
}
