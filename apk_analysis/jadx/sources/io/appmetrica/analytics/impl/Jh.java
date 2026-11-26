package io.appmetrica.analytics.impl;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public final class Jh implements InterfaceC1298u4 {
    public final InterfaceC1014j5 a;

    public Jh(InterfaceC1014j5 interfaceC1014j5) {
        this.a = interfaceC1014j5;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1298u4
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Dg a(Context context, C1144o5 c1144o5, C0859d4 c0859d4, B4 b4) {
        Eg eg;
        C0808b5 c0808b5 = new C0808b5(c0859d4.b, c0859d4.a);
        Fg fg = new Fg(this.a);
        synchronized (c1144o5) {
            eg = (Eg) c1144o5.a(c0808b5, b4, fg, c1144o5.a);
        }
        return new Dg(context, eg);
    }
}
