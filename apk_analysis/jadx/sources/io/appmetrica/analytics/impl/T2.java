package io.appmetrica.analytics.impl;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public abstract class T2 {
    public final Tf a;
    public final Sa b;

    public T2(Tf tf, Sa sa) {
        this.a = tf;
        this.b = sa;
    }

    public final boolean a(C0783a6 c0783a6, S2 s2) {
        Iterator it = ((C0967h9) this.a.a(c0783a6.d)).a.iterator();
        while (it.hasNext()) {
            if (s2.a(it.next(), c0783a6)) {
                return true;
            }
        }
        return false;
    }

    public final Tf b() {
        return this.a;
    }

    public final Sa a() {
        return this.b;
    }
}
