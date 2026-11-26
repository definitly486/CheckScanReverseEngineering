package io.appmetrica.analytics.impl;

/* JADX INFO: loaded from: classes5.dex */
public final class K4 {
    public final Ub a;

    public K4() {
        this(Fa.k().l());
    }

    public final C1392xn a(I4 i4, Qm qm) {
        C1392xn c1392xn = new C1392xn(i4, new Lg(qm));
        Ub ub = this.a;
        synchronized (ub) {
            ub.c.add(c1392xn);
        }
        return c1392xn;
    }

    public K4(Ub ub) {
        this.a = ub;
    }

    public static P4 a(I4 i4) {
        return new P4(new N4(i4), i4);
    }
}
