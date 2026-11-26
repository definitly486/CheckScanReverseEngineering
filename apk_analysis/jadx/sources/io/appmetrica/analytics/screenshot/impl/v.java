package io.appmetrica.analytics.screenshot.impl;

import defpackage.u96;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class v implements InterfaceC1537h {
    public final ClientContext a;
    public final C b;

    public v(ClientContext clientContext, C c) {
        this.a = clientContext;
        this.b = c;
    }

    @Override // io.appmetrica.analytics.screenshot.impl.InterfaceC1537h
    public final List<B> a() {
        return u96.i(new C1547s(this.a, this.b), new M(this.a, this.b));
    }
}
