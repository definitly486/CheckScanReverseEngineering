package io.appmetrica.analytics.impl;

/* JADX INFO: loaded from: classes5.dex */
public final class Dj implements InterfaceC0788ab {
    public final /* synthetic */ String a;
    public final /* synthetic */ String b;
    public final /* synthetic */ Throwable c;

    public Dj(String str, String str2, Throwable th) {
        this.a = str;
        this.b = str2;
        this.c = th;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0788ab
    public final void a(InterfaceC0814bb interfaceC0814bb) {
        interfaceC0814bb.reportError(this.a, this.b, this.c);
    }
}
