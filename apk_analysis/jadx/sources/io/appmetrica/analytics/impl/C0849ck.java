package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ck, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0849ck implements InterfaceC0788ab {
    public final /* synthetic */ String a;
    public final /* synthetic */ String b;

    public C0849ck(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0788ab
    public final void a(InterfaceC0814bb interfaceC0814bb) {
        interfaceC0814bb.reportEvent(this.a, this.b);
    }
}
