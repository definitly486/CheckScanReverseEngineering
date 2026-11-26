package io.appmetrica.analytics.screenshot.impl;

import defpackage.jh2;
import io.appmetrica.analytics.coreapi.internal.data.Converter;

/* JADX INFO: loaded from: classes5.dex */
public final class F implements Converter {
    public final C1535f a;
    public final I b;
    public final C1544o c;

    public /* synthetic */ F(C1535f c1535f, I i, C1544o c1544o, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? new C1535f() : c1535f, (i2 & 2) != 0 ? new I() : i, (i2 & 4) != 0 ? new C1544o() : c1544o);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final P toModel(A a) {
        N n;
        U u;
        x xVar;
        y yVar;
        w wVar;
        boolean z = a.a;
        z zVar = a.b;
        O model = null;
        if (zVar == null || (wVar = zVar.a) == null) {
            n = null;
        } else {
            this.a.getClass();
            n = new N(wVar.a);
        }
        z zVar2 = a.b;
        if (zVar2 == null || (yVar = zVar2.b) == null) {
            u = null;
        } else {
            this.b.getClass();
            u = new U(yVar.a, yVar.b);
        }
        z zVar3 = a.b;
        if (zVar3 != null && (xVar = zVar3.c) != null) {
            model = this.c.toModel(xVar);
        }
        return new P(z, n, u, model);
    }

    public F(C1535f c1535f, I i, C1544o c1544o) {
        this.a = c1535f;
        this.b = i;
        this.c = c1544o;
    }

    public F() {
        this(null, null, null, 7, null);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final A fromModel(P p) {
        A a = new A();
        a.a = p.a;
        z zVar = new z();
        N n = p.b;
        zVar.a = n != null ? this.a.fromModel(n) : null;
        U u = p.c;
        zVar.b = u != null ? this.b.fromModel(u) : null;
        O o = p.d;
        zVar.c = o != null ? this.c.fromModel(o) : null;
        a.b = zVar;
        return a;
    }
}
