package io.appmetrica.analytics.impl;

/* JADX INFO: loaded from: classes5.dex */
public final class Cj implements InterfaceC0788ab {
    public final /* synthetic */ String a;
    public final /* synthetic */ Throwable b;

    public Cj(String str, Throwable th) {
        this.a = str;
        this.b = th;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0788ab
    public final void a(InterfaceC0814bb interfaceC0814bb) {
        interfaceC0814bb.reportError(this.a, this.b);
    }
}
