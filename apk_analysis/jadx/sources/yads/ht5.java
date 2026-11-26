package yads;

import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ht5 {
    public static it5 a() {
        if (it5.b == null) {
            synchronized (it5.c) {
                try {
                    if (it5.b == null) {
                        it5.b = new it5();
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        it5 it5Var = it5.b;
        if (it5Var != null) {
            return it5Var;
        }
        defpackage.ah.f("Required value was null.");
        return null;
    }
}
