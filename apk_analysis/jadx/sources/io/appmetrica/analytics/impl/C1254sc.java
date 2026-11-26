package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.sc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1254sc implements D9 {
    public final C1324v5 a;

    public C1254sc(H9 h9, Y6 y6, Tg tg, A4 a4, C0808b5 c0808b5, C1024jf c1024jf) {
        C1228rc c1228rc = new C1228rc(y6, tg, this, a4, c1024jf);
        this.a = new C1324v5(h9, c1228rc.a(), c1228rc.b(), c0808b5);
    }

    @Override // io.appmetrica.analytics.impl.D9
    public final C9 a() {
        return this.a;
    }

    public final C1324v5 b() {
        return this.a;
    }
}
