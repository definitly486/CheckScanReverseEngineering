package io.appmetrica.analytics.impl;

/* JADX INFO: loaded from: classes5.dex */
public final class Yj implements InterfaceC0788ab {
    public final /* synthetic */ String a;
    public final /* synthetic */ String b;

    public Yj(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0788ab
    public final void a(InterfaceC0814bb interfaceC0814bb) {
        interfaceC0814bb.putAppEnvironmentValue(this.a, this.b);
    }
}
