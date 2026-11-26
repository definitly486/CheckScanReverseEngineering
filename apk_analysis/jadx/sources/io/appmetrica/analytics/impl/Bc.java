package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;

/* JADX INFO: loaded from: classes5.dex */
public final class Bc extends AbstractC0905f {
    public Bc(Context context, Eg eg) {
        super(context, eg);
    }

    @Override // io.appmetrica.analytics.impl.AbstractC0905f
    public final void b(C0783a6 c0783a6, B4 b4) {
        boolean zBooleanValue = ((Boolean) WrapUtils.getOrDefault(b4.b.b, Boolean.FALSE)).booleanValue();
        Zb zbM = Fa.I.m();
        zbM.a(zBooleanValue);
        zbM.a(b4.b.c);
        Boolean bool = b4.b.n;
        if (bool != null) {
            Fa.I.c().b(bool.booleanValue());
        }
        this.b.a(c0783a6, b4);
    }
}
