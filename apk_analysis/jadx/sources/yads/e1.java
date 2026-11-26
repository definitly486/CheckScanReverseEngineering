package yads;

import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public abstract class e1 {
    public static g1 a() {
        if (g1.d == null) {
            synchronized (g1.c) {
                try {
                    if (g1.d == null) {
                        g1.d = new g1();
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        g1 g1Var = g1.d;
        if (g1Var != null) {
            return g1Var;
        }
        defpackage.fg.c("Required value was null.");
        return null;
    }
}
