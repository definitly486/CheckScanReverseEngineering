package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.event.AppMetricaEvent;

/* JADX INFO: loaded from: classes5.dex */
public final class Vj implements InterfaceC0788ab {
    public final /* synthetic */ AppMetricaEvent a;

    public Vj(AppMetricaEvent appMetricaEvent) {
        this.a = appMetricaEvent;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0788ab
    public final void a(InterfaceC0814bb interfaceC0814bb) {
        interfaceC0814bb.reportEvent(this.a);
    }
}
