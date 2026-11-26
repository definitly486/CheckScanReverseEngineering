package io.appmetrica.analytics.impl;

import android.content.Context;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.yj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1413yj implements InterfaceC1298u4 {
    @Override // io.appmetrica.analytics.impl.InterfaceC1298u4
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final C1313uj a(Context context, C1144o5 c1144o5, C0859d4 c0859d4, B4 b4) {
        Eg eg;
        C0808b5 c0808b5 = new C0808b5(c0859d4.b, c0859d4.a);
        synchronized (c1144o5) {
            eg = (Eg) c1144o5.a.get(c0808b5.toString());
        }
        return new C1313uj(eg);
    }
}
