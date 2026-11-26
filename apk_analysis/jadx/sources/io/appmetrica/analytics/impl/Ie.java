package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;

/* JADX INFO: loaded from: classes5.dex */
public final class Ie implements ProtobufConverter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Jm fromModel(He he) {
        Jm jm = new Jm();
        jm.a = he.a;
        jm.b = he.b;
        return jm;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        Jm jm = (Jm) obj;
        return new He(jm.a, jm.b);
    }

    public final He a(Jm jm) {
        return new He(jm.a, jm.b);
    }
}
