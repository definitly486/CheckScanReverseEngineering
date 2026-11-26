package yads;

import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public abstract class eb5 {
    public static fb5 a() {
        if (fb5.d == null) {
            synchronized (fb5.c) {
                try {
                    if (fb5.d == null) {
                        fb5.d = new fb5();
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        fb5 fb5Var = fb5.d;
        if (fb5Var != null) {
            return fb5Var;
        }
        defpackage.fg.c("Required value was null.");
        return null;
    }
}
