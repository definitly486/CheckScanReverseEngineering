package io.appmetrica.analytics.impl;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class C4 extends D4 {
    public C4(C1437zi c1437zi) {
        super(c1437zi);
    }

    public final void a(EnumC1176pb enumC1176pb, List<Ug> list) {
        if (!I9.h.contains(enumC1176pb)) {
            list.add(this.a.s);
        }
        if (I9.b.contains(enumC1176pb)) {
            return;
        }
        list.add(this.a.c);
    }
}
