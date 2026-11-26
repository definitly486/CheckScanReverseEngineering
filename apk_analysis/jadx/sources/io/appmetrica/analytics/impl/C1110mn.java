package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.limitation.Trimmer;
import io.appmetrica.analytics.coreutils.internal.validation.Validator;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.mn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1110mn extends F4 {
    public final Trimmer g;

    public C1110mn(String str, String str2, Trimmer<String> trimmer, Validator<String> validator, X2 x2) {
        super(0, str, str2, validator, x2);
        this.g = trimmer;
    }

    @Override // io.appmetrica.analytics.impl.F4
    public final void a(C1240ro c1240ro) {
        String str = (String) this.g.trim((String) this.f);
        c1240ro.d.a = str == null ? new byte[0] : str.getBytes();
    }

    public final Trimmer<String> h() {
        return this.g;
    }
}
