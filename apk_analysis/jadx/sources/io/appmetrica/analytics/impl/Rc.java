package io.appmetrica.analytics.impl;

import defpackage.ll3;

/* JADX INFO: loaded from: classes5.dex */
public final class Rc implements R8 {
    public final Ee a;
    public final ll3 b;

    public Rc(Ee ee, ll3<Integer> ll3Var) {
        this.a = ee;
        this.b = ll3Var;
    }

    @Override // io.appmetrica.analytics.impl.R8
    public final boolean b() {
        return ((De) this.a).b.get() >= ((long) ((Number) this.b.invoke()).intValue());
    }
}
