package io.appmetrica.analytics.impl;

import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class Wj implements InterfaceC0788ab {
    public final /* synthetic */ Map a;

    public Wj(Map map) {
        this.a = map;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0788ab
    public final void a(InterfaceC0814bb interfaceC0814bb) {
        interfaceC0814bb.reportAnr(this.a);
    }
}
