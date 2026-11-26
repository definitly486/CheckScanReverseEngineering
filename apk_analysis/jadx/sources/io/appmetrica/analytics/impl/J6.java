package io.appmetrica.analytics.impl;

/* JADX INFO: loaded from: classes5.dex */
public final class J6 implements Co {
    public final Co a;
    public final Co b;
    public final T8 c;

    public J6(Co co, Co co2, T8 t8) {
        this.a = co;
        this.b = co2;
        this.c = t8;
    }

    @Override // io.appmetrica.analytics.impl.Co
    public final byte[] a(Z8 z8, C1233rh c1233rh) {
        Integer num = z8.w;
        return (num == null || num.intValue() < 2) ? this.b.a(z8, c1233rh) : this.a.a(z8, c1233rh);
    }

    public final Co b() {
        return this.b;
    }

    public final Co c() {
        return this.a;
    }

    public final T8 a() {
        return this.c;
    }
}
