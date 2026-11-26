package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AdRevenue;

/* JADX INFO: loaded from: classes5.dex */
public final class Nj implements InterfaceC0788ab {
    public final /* synthetic */ AdRevenue a;

    public Nj(AdRevenue adRevenue) {
        this.a = adRevenue;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0788ab
    public final void a(InterfaceC0814bb interfaceC0814bb) {
        interfaceC0814bb.reportAdRevenue(this.a);
    }
}
