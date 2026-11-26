package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.Revenue;

/* JADX INFO: loaded from: classes5.dex */
public final class Jj implements InterfaceC0788ab {
    public final /* synthetic */ Revenue a;

    public Jj(Revenue revenue) {
        this.a = revenue;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0788ab
    public final void a(InterfaceC0814bb interfaceC0814bb) {
        interfaceC0814bb.reportRevenue(this.a);
    }
}
