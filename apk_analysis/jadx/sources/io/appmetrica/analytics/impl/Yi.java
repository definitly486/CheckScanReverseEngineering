package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.push.coreutils.internal.CoreConstants;

/* JADX INFO: loaded from: classes5.dex */
public final class Yi implements InterfaceC1310ug {
    public final Context a;
    public final String b = CoreConstants.Transport.RUSTORE;

    public Yi(Context context) {
        this.a = context;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1310ug
    public final void a(InterfaceC1207qg interfaceC1207qg) {
        new C0822bj(this.a).a(interfaceC1207qg);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1310ug
    public final String a() {
        return this.b;
    }
}
