package io.appmetrica.analytics.impl;

/* JADX INFO: loaded from: classes5.dex */
public final class Ej implements InterfaceC0788ab {
    public final /* synthetic */ Throwable a;

    public Ej(Throwable th) {
        this.a = th;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0788ab
    public final void a(InterfaceC0814bb interfaceC0814bb) {
        interfaceC0814bb.reportUnhandledException(this.a);
    }
}
