package io.appmetrica.analytics.impl;

import android.os.Bundle;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.va, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1329va extends L4 {
    public C1329va(I4 i4) {
        super(i4);
    }

    @Override // io.appmetrica.analytics.impl.L4
    public final boolean a(C0783a6 c0783a6, G4 g4) {
        Bundle bundle = c0783a6.m;
        C0995ib c0995ib = bundle != null ? (C0995ib) bundle.getParcelable("io.appmetrica.analytics.impl.IdentifiersData") : null;
        if (c0995ib != null) {
            if (c0995ib.d) {
                A4 a4 = g4.b.d.a;
                Boolean bool = a4.n;
                Boolean bool2 = a4.i;
                Fa.I.c().c(bool != null ? bool.booleanValue() : true);
                Fa.I.h().b(bool2);
            }
        }
        this.a.a(c0995ib);
        return false;
    }
}
