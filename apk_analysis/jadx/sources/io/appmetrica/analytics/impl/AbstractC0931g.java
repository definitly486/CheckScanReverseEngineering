package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC0931g implements InterfaceC0891eb {
    public final C0989i5 a;
    public final C1004il b;
    public final C1134nl c;
    public final C0953gl d;
    public final InterfaceC0814bb e;
    public final SystemTimeProvider f;

    public AbstractC0931g(C0989i5 c0989i5, C1004il c1004il, C1134nl c1134nl, C0953gl c0953gl, InterfaceC0814bb interfaceC0814bb, SystemTimeProvider systemTimeProvider) {
        this.a = c0989i5;
        this.b = c1004il;
        this.c = c1134nl;
        this.d = c0953gl;
        this.e = interfaceC0814bb;
        this.f = systemTimeProvider;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0891eb
    public final Tk a(Uk uk) {
        boolean zB;
        if (this.c.i()) {
            this.e.reportEvent("create session with non-empty storage");
        }
        C0989i5 c0989i5 = this.a;
        C1134nl c1134nl = this.c;
        long jA = this.b.a();
        C1134nl c1134nl2 = this.c;
        c1134nl2.a(C1134nl.f, Long.valueOf(jA));
        c1134nl2.a(C1134nl.d, Long.valueOf(uk.a));
        c1134nl2.a(C1134nl.h, Long.valueOf(uk.a));
        c1134nl2.a(C1134nl.i, Long.valueOf(uk.b));
        c1134nl2.a(C1134nl.g, 0L);
        c1134nl2.a(C1134nl.j, Boolean.TRUE);
        c1134nl2.a();
        Y6 y6 = this.a.e;
        EnumC1160ol enumC1160ol = this.d.a;
        long j = uk.b / 1000;
        y6.getClass();
        G7 g7 = new G7(null, 1, null);
        C1233rh c1233rh = (C1233rh) y6.e.k.a();
        Long lValueOf = Long.valueOf(jA);
        Long lValueOf2 = Long.valueOf(j);
        String strA = H7.a(c1233rh);
        Long lValueOf3 = Long.valueOf(Wn.a());
        C1133nk c1133nk = AbstractC1107mk.a;
        synchronized (c1133nk) {
            zB = c1133nk.b.b(true);
        }
        y6.a(g7.fromModel(new F7(lValueOf, enumC1160ol, strA, new E7(lValueOf2, lValueOf3, Boolean.valueOf(zB)))));
        return new Tk(c0989i5, c1134nl, b(), new SystemTimeProvider());
    }

    public final Wk b() {
        Vk vk = new Vk(this.d);
        vk.h = this.c.c.a(C1134nl.j);
        vk.g = this.c.c.b(C1134nl.g);
        vk.d = this.c.c.b(C1134nl.h);
        vk.e = this.c.c.b(C1134nl.i);
        vk.c = this.c.c.b(C1134nl.f);
        vk.i = this.c.c.b(C1134nl.d);
        vk.a = this.c.c.b(C1134nl.e);
        vk.j = this.c.c.a(C1134nl.k);
        return new Wk(vk);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0891eb
    public final Tk a() {
        if (this.c.i()) {
            return new Tk(this.a, this.c, b(), this.f);
        }
        return null;
    }
}
