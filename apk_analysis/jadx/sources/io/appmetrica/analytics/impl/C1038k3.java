package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.validation.Validator;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.k3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1038k3 extends F4 {
    public C1038k3(String str, boolean z, Validator<String> validator, X2 x2) {
        super(3, str, Boolean.valueOf(z), validator, x2);
    }

    @Override // io.appmetrica.analytics.impl.F4
    public final void a(C1240ro c1240ro) {
        c1240ro.d.d = ((Boolean) this.f).booleanValue();
    }
}
