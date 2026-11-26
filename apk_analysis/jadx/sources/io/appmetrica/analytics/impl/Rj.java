package io.appmetrica.analytics.impl;

/* JADX INFO: loaded from: classes5.dex */
public final class Rj implements InterfaceC0788ab {
    public final /* synthetic */ InterfaceC0978hk a;

    public Rj(InterfaceC0978hk interfaceC0978hk) {
        this.a = interfaceC0978hk;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0788ab
    public final void a(InterfaceC0814bb interfaceC0814bb) {
        C0952gk c0952gkA = ((C1204qd) this.a).a();
        if (c0952gkA != null) {
            interfaceC0814bb.reportEvent(c0952gkA.a, c0952gkA.b);
        }
    }
}
