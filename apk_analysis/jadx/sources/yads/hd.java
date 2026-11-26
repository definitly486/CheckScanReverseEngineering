package yads;

import android.content.Context;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public abstract class hd {
    public static volatile gd a;
    public static final Object b = new Object();

    public static gd a(Context context) {
        if (a == null) {
            synchronized (b) {
                try {
                    if (a == null) {
                        a = new gd(bv3.a(context, "YadPreferenceFile"));
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        gd gdVar = a;
        if (gdVar != null) {
            return gdVar;
        }
        defpackage.fg.c("Required value was null.");
        return null;
    }
}
