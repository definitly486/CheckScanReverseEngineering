package io.appmetrica.analytics.impl;

/* JADX INFO: loaded from: classes5.dex */
public final class Tj implements InterfaceC0788ab {
    public final /* synthetic */ String a;
    public final /* synthetic */ byte[] b;

    public Tj(String str, byte[] bArr) {
        this.a = str;
        this.b = bArr;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0788ab
    public final void a(InterfaceC0814bb interfaceC0814bb) {
        interfaceC0814bb.setSessionExtra(this.a, this.b);
    }
}
