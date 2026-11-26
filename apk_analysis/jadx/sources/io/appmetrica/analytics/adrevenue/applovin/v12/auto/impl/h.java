package io.appmetrica.analytics.adrevenue.applovin.v12.auto.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;

/* JADX INFO: loaded from: classes5.dex */
public final class h implements ProtobufConverter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final a fromModel(l lVar) {
        a aVar = new a();
        aVar.a = lVar.a;
        return aVar;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        return new l(((a) obj).a);
    }

    public final l a(a aVar) {
        return new l(aVar.a);
    }
}
