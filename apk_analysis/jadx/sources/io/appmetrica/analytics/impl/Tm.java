package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;

/* JADX INFO: loaded from: classes5.dex */
public final class Tm implements ProtobufConverter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Km fromModel(Sm sm) {
        Km km = new Km();
        km.a = sm.a;
        return km;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        return new Sm(((Km) obj).a);
    }

    public final Sm a(Km km) {
        return new Sm(km.a);
    }
}
