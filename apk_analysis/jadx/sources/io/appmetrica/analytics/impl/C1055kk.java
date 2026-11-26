package io.appmetrica.analytics.impl;

import androidx.fragment.app.FragmentTransaction;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.kk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1055kk implements InterfaceC1207qg {
    public final /* synthetic */ C1081lk a;

    public C1055kk(C1081lk c1081lk) {
        this.a = c1081lk;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1207qg
    public final void a(InterfaceC1410yg interfaceC1410yg) {
        C1155og c1155ogA = interfaceC1410yg.a();
        if (c1155ogA == null || this.a.b()) {
            return;
        }
        try {
            C0783a6 c0783a6 = new C0783a6("", "", 0);
            c0783a6.setValueBytes(c1155ogA.a());
            EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
            c0783a6.d = FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
            this.a.a.a(c0783a6);
            C1081lk.b(this.a);
        } catch (Throwable unused) {
        }
    }
}
