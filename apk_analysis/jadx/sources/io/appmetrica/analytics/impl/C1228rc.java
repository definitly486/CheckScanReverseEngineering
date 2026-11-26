package io.appmetrica.analytics.impl;

import defpackage.cl4;
import defpackage.fh8;
import defpackage.qn1;
import defpackage.u96;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.rc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1228rc {
    public final Tg a;
    public final D9 b;
    public final A4 c;
    public final C1024jf d;
    public final Y4 e;
    public final Jc f = new Jc();
    public final cl4 g = new fh8(new C1203qc(this));

    public C1228rc(Y6 y6, Tg tg, D9 d9, A4 a4, C1024jf c1024jf) {
        this.a = tg;
        this.b = d9;
        this.c = a4;
        this.d = c1024jf;
        this.e = new Y4(y6, tg);
    }

    public final List<R8> a() {
        return this.e.a();
    }

    public final List<R8> b() {
        return qn1.h0(u96.h((R8) this.g.getValue()), u96.h(this.e.c));
    }
}
