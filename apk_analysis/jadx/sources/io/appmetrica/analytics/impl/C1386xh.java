package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.xh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1386xh extends Ug {
    public C1386xh(C0989i5 c0989i5) {
        super(c0989i5);
    }

    @Override // io.appmetrica.analytics.impl.Ug
    public final boolean a(C0783a6 c0783a6) {
        Tk tkA;
        ((C1324v5) this.a.p).e();
        C1030jl c1030jl = this.a.j;
        synchronized (c1030jl) {
            try {
                if (c1030jl.g == 0) {
                    tkA = c1030jl.c.a();
                    Tk tkA2 = c1030jl.d.a();
                    long j = -1;
                    long j2 = tkA == null ? -1L : tkA.d;
                    if (tkA2 != null) {
                        j = tkA2.d;
                    }
                    if (j2 <= j) {
                        tkA = tkA2;
                    }
                } else {
                    tkA = c1030jl.f;
                }
                if (tkA != null) {
                    tkA.b();
                    if (tkA.h) {
                        tkA.h = false;
                        C1134nl c1134nl = tkA.b;
                        c1134nl.a(C1134nl.j, Boolean.FALSE);
                        c1134nl.a();
                    }
                    c1030jl.g = 0;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return true;
    }
}
