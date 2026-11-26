package io.appmetrica.analytics.billing.impl;

import defpackage.jh2;
import io.appmetrica.analytics.coreapi.internal.data.Converter;

/* JADX INFO: loaded from: classes5.dex */
public final class p implements Converter {
    public final g a;

    public /* synthetic */ p(g gVar, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new g() : gVar);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final r fromModel(B b) {
        r rVar = new r();
        rVar.a = b.a;
        y yVar = b.b;
        rVar.b = yVar != null ? this.a.fromModel(yVar) : null;
        return rVar;
    }

    public p(g gVar) {
        this.a = gVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public p() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final B toModel(r rVar) {
        boolean z = rVar.a;
        g gVar = this.a;
        q qVar = rVar.b;
        gVar.getClass();
        return new B(z, new y(qVar.a, qVar.b));
    }
}
