package io.appmetrica.analytics.screenshot.impl;

import defpackage.u96;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.screenshot.impl.t, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1548t implements InterfaceC1537h {
    public final ClientContext a;
    public final C b;

    public C1548t(ClientContext clientContext, C c) {
        this.a = clientContext;
        this.b = c;
    }

    @Override // io.appmetrica.analytics.screenshot.impl.InterfaceC1537h
    public final List<B> a() {
        return u96.i(new C1533d(this.a, this.b), new M(this.a, this.b));
    }
}
