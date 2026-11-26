package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.limitation.CollectionLimitation;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.b6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0809b6 extends F4 {
    public C0809b6(String str, double d) {
        super(2, str, Double.valueOf(d), new Eb(), new E4(new Vb(new CollectionLimitation(100))));
    }

    @Override // io.appmetrica.analytics.impl.F4
    public final void a(C1240ro c1240ro) {
        C1292to c1292to = c1240ro.d;
        c1292to.c = ((Double) this.f).doubleValue() + c1292to.c;
    }
}
