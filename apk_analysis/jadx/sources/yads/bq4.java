package yads;

import android.content.Context;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public abstract class bq4 {
    public static volatile aq4 a;
    public static final Object b = new Object();

    public static final aq4 a(Context context) {
        if (a == null) {
            synchronized (b) {
                try {
                    if (a == null) {
                        a = new aq4(bv3.a(context, "YadPreferenceFile"));
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        aq4 aq4Var = a;
        if (aq4Var != null) {
            return aq4Var;
        }
        defpackage.fg.c("Required value was null.");
        return null;
    }
}
