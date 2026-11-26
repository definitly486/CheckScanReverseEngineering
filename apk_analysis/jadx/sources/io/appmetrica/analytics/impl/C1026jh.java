package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.jh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1026jh extends Ug {
    public C1026jh(C0989i5 c0989i5) {
        super(c0989i5);
    }

    @Override // io.appmetrica.analytics.impl.Ug
    public final boolean a(C0783a6 c0783a6) {
        Tk tkA;
        C1108ml c1108ml;
        boolean z;
        boolean z2;
        C1353w9 c1353w9 = this.a.n;
        C1030jl c1030jl = c1353w9.c;
        if (c1030jl.g == 0) {
            tkA = c1030jl.c.a();
            Tk tkA2 = c1030jl.d.a();
            if ((tkA == null ? -1L : tkA.d) <= (tkA2 != null ? tkA2.d : -1L)) {
                tkA = tkA2;
            }
        } else {
            tkA = c1030jl.f;
        }
        if (tkA != null) {
            synchronized (tkA) {
                z2 = tkA.k;
            }
            if (z2) {
                C1056kl c1056klA = c1030jl.a.e.a(tkA.d, tkA.c.a);
                long j = c0783a6.i;
                long j2 = c0783a6.j;
                c1030jl.g = 2;
                Tk tkA3 = c1030jl.e.a(new Uk(j, j2, c1056klA));
                c1030jl.f = tkA3;
                c1030jl.a(tkA3.d);
                c1108ml = C1030jl.a(c1030jl.f, j);
            } else {
                c1108ml = new C1108ml();
                c1108ml.a = tkA.d;
                long andIncrement = tkA.g.getAndIncrement();
                C1134nl c1134nl = tkA.b;
                c1134nl.a(C1134nl.g, Long.valueOf(tkA.g.get()));
                c1134nl.a();
                c1108ml.b = andIncrement;
                long j3 = c0783a6.j;
                long j4 = c0783a6.i;
                long j5 = (j3 - tkA.f) / 1000;
                C1134nl c1134nl2 = tkA.b;
                long j6 = j4 - tkA.e;
                tkA.j = j6;
                c1134nl2.a(C1134nl.e, Long.valueOf(j6));
                c1134nl2.a();
                c1108ml.c = Math.max(j5, tkA.j / 1000);
                c1108ml.d = tkA.c.a;
            }
        } else {
            c1108ml = null;
        }
        if (c1108ml != null) {
            c1353w9.a(c0783a6, c1108ml);
            z = true;
        } else {
            z = false;
        }
        return !z;
    }
}
