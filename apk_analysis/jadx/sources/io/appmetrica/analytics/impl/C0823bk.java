package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.bk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0823bk implements InterfaceC0788ab {
    public final /* synthetic */ String a;

    public C0823bk(String str) {
        this.a = str;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0788ab
    public final void a(InterfaceC0814bb interfaceC0814bb) {
        interfaceC0814bb.reportEvent(this.a);
    }
}
