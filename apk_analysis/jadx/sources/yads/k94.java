package yads;

import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public abstract class k94 {
    public static m94 a(bf5 bf5Var) {
        if (m94.g == null) {
            synchronized (m94.f) {
                try {
                    if (m94.g == null) {
                        m94.g = new m94(new g94(new h94()), new j94(), new jf5(), bf5Var);
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        m94 m94Var = m94.g;
        if (m94Var != null) {
            return m94Var;
        }
        defpackage.ah.f("Required value was null.");
        return null;
    }
}
