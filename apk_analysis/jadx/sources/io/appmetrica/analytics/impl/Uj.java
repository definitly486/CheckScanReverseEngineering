package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.AdRevenue;

/* JADX INFO: loaded from: classes5.dex */
public final class Uj implements InterfaceC0788ab {
    public final /* synthetic */ AdRevenue a;
    public final /* synthetic */ boolean b;

    public Uj(AdRevenue adRevenue, boolean z) {
        this.a = adRevenue;
        this.b = z;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0788ab
    public final void a(InterfaceC0814bb interfaceC0814bb) {
        interfaceC0814bb.reportAdRevenue(this.a, this.b);
    }
}
