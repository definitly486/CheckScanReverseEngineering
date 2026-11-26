package yads;

import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public abstract class xp3 {
    public static yp3 a() {
        if (yp3.d == null) {
            synchronized (yp3.c) {
                try {
                    if (yp3.d == null) {
                        yp3.d = new yp3();
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        yp3 yp3Var = yp3.d;
        if (yp3Var != null) {
            return yp3Var;
        }
        defpackage.fg.c("Required value was null.");
        return null;
    }
}
