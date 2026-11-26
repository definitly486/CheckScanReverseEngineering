package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.validation.Validator;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.qe, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1205qe extends F4 {
    public C1205qe(String str, double d, Validator<String> validator, X2 x2) {
        super(1, str, Double.valueOf(d), validator, x2);
    }

    @Override // io.appmetrica.analytics.impl.F4
    public final void a(C1240ro c1240ro) {
        c1240ro.d.b = ((Double) this.f).doubleValue();
    }
}
