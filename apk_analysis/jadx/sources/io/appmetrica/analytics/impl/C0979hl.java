package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.hl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0979hl implements InterfaceC0891eb {
    public final C0989i5 a;
    public final C1004il b;
    public final C1134nl c;
    public final C0953gl d = C0953gl.a(EnumC1160ol.BACKGROUND).b().a();

    public C0979hl(C0989i5 c0989i5, C1004il c1004il) {
        this.a = c0989i5;
        this.b = c1004il;
        this.c = new C1134nl(c0989i5.h(), "background");
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0891eb
    public final Tk a(Uk uk) {
        String strA;
        boolean zB;
        long jA = this.b.a();
        C1134nl c1134nl = this.c;
        c1134nl.a(C1134nl.f, Long.valueOf(jA));
        c1134nl.a(C1134nl.d, Long.valueOf(uk.a));
        c1134nl.a(C1134nl.h, Long.valueOf(uk.a));
        c1134nl.a(C1134nl.i, Long.valueOf(uk.b));
        c1134nl.a(C1134nl.g, 0L);
        c1134nl.a(C1134nl.j, Boolean.FALSE);
        c1134nl.a();
        Y6 y6 = this.a.e;
        EnumC1160ol enumC1160ol = EnumC1160ol.BACKGROUND;
        long j = uk.b / 1000;
        C1056kl c1056kl = uk.c;
        y6.getClass();
        G7 g7 = new G7(null, 1, null);
        C1233rh c1233rh = (C1233rh) y6.e.k.a();
        Long lValueOf = Long.valueOf(jA);
        Long lValueOf2 = Long.valueOf(j);
        if (c1056kl == null || (strA = c1056kl.a) == null) {
            strA = H7.a(c1233rh);
        }
        Long lValueOf3 = Long.valueOf(Wn.a());
        C1133nk c1133nk = AbstractC1107mk.a;
        synchronized (c1133nk) {
            zB = c1133nk.b.b(true);
        }
        y6.a(g7.fromModel(new F7(lValueOf, enumC1160ol, strA, new E7(lValueOf2, lValueOf3, Boolean.valueOf(zB)))));
        Vk vk = new Vk(this.d);
        vk.h = this.c.c.a(C1134nl.j);
        vk.g = this.c.c.b(C1134nl.g);
        vk.d = this.c.c.b(C1134nl.h);
        vk.e = this.c.c.b(C1134nl.i);
        vk.c = this.c.c.b(C1134nl.f);
        vk.i = this.c.c.b(C1134nl.d);
        vk.a = this.c.c.b(C1134nl.e);
        return new Tk(this.a, this.c, new Wk(vk), new SystemTimeProvider());
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0891eb
    public final Tk a() {
        return null;
    }
}
