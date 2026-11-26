package io.appmetrica.analytics.impl;

import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0957h extends Ja {
    public final C0808b5 b;

    public C0957h(C1437zi c1437zi, C0808b5 c0808b5) {
        super(c1437zi);
        this.b = c0808b5;
    }

    @Override // io.appmetrica.analytics.impl.Ja
    public final void a(List<Ug> list) {
        list.add(this.a.p);
        list.add(this.a.o);
        list.add(this.a.r);
        list.add(this.a.g);
        if (this.b.d()) {
            list.add(this.a.q);
        }
    }
}
