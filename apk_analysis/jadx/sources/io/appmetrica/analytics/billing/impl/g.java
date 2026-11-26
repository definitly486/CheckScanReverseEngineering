package io.appmetrica.analytics.billing.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;

/* JADX INFO: loaded from: classes5.dex */
public final class g implements Converter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final q fromModel(y yVar) {
        q qVar = new q();
        qVar.a = yVar.a;
        qVar.b = yVar.b;
        return qVar;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        q qVar = (q) obj;
        return new y(qVar.a, qVar.b);
    }

    public final y a(q qVar) {
        return new y(qVar.a, qVar.b);
    }
}
