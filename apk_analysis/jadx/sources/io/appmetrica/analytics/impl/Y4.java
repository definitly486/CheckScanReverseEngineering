package io.appmetrica.analytics.impl;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class Y4 {
    public final I5 a;
    public final Rc b;
    public final Rc c;

    public Y4(Y6 y6, Tg tg) {
        De de = new De(y6);
        this.a = new I5(y6);
        this.b = new Rc(de, new X4(tg));
        this.c = new Rc(de, W4.a);
    }

    public final List<R8> a() {
        return u96.i(this.a, this.b);
    }

    public final List<R8> b() {
        return u96.h(this.c);
    }
}
