package io.appmetrica.analytics.impl;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public final class Fg implements InterfaceC0785a8 {
    public final InterfaceC1014j5 a;

    public Fg(InterfaceC1014j5 interfaceC1014j5) {
        this.a = interfaceC1014j5;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0785a8
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Eg a(Context context, C0808b5 c0808b5, B4 b4) {
        return new Eg(context, c0808b5, b4, this.a, new C0834c5(), Xl.a());
    }

    public final InterfaceC1014j5 a() {
        return this.a;
    }
}
