package io.appmetrica.analytics.impl;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public final class Eg implements InterfaceC0954gm, Ua {
    public final Context a;
    public final C0808b5 b;
    public final C0834c5 c;
    public final Qm d;
    public final Za e;

    public Eg(Context context, C0808b5 c0808b5, B4 b4, InterfaceC1014j5 interfaceC1014j5, C0834c5 c0834c5, Xl xl) {
        this.a = context;
        this.b = c0808b5;
        this.c = c0834c5;
        Qm qmA = xl.a(context, c0808b5, b4.a);
        this.d = qmA;
        this.e = interfaceC1014j5.a(context, c0808b5, b4.b, qmA);
        xl.a(c0808b5, this);
    }

    public final void a(C0783a6 c0783a6, B4 b4) {
        if (!I9.c.contains(EnumC1176pb.a(c0783a6.d))) {
            this.e.a(b4.b);
        }
        ((C0989i5) this.e).a(c0783a6);
    }

    public final void b(InterfaceC1272t4 interfaceC1272t4) {
        this.c.a.remove(interfaceC1272t4);
        if (this.c.a.isEmpty()) {
            ((Sa) this.e).c();
        }
    }

    public final Context b() {
        return this.a;
    }

    public Eg(Context context, C0808b5 c0808b5, B4 b4, InterfaceC1014j5 interfaceC1014j5) {
        this(context, c0808b5, b4, interfaceC1014j5, new C0834c5(), Xl.a());
    }

    public final void a(InterfaceC1272t4 interfaceC1272t4) {
        this.c.a.add(interfaceC1272t4);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0954gm
    public final void a(C1341vm c1341vm) {
        ((C0989i5) this.e).a(c1341vm);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0954gm
    public final void a(Zl zl, C1341vm c1341vm) {
        ((C0989i5) this.e).getClass();
    }

    @Override // io.appmetrica.analytics.impl.Ua
    public final void a(B4 b4) {
        this.d.a(b4.a);
        this.e.a(b4.b);
    }

    public final C0808b5 a() {
        return this.b;
    }
}
