package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ko, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1059ko extends L4 {
    public final S6 b;

    public C1059ko(I4 i4, S6 s6) {
        super(i4);
        this.b = s6;
    }

    @Override // io.appmetrica.analytics.impl.L4
    public final boolean a(C0783a6 c0783a6, G4 g4) {
        A4 a4 = g4.b.d.a;
        this.b.a(a4.i);
        Zb zbM = Fa.I.m();
        if (Boolean.TRUE.equals(a4.b)) {
            zbM.a(true);
        } else {
            if (Boolean.FALSE.equals(a4.b)) {
                zbM.a(false);
            }
        }
        zbM.a(a4.c);
        Boolean bool = a4.n;
        Fa.I.c().b(bool != null ? bool.booleanValue() : true);
        return false;
    }
}
