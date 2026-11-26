package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.modulesapi.internal.client.ModuleClientActivator;

/* JADX INFO: loaded from: classes5.dex */
public final class W3 implements ModuleClientActivator {
    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleClientActivator
    public final void activate(Context context) {
        C0880e0 c0880e0B = C1169p4.l().b();
        c0880e0B.c.a().executeDelayed(new C0855d0(c0880e0B, context), c0880e0B.d);
    }
}
