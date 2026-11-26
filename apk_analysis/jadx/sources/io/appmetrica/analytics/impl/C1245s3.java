package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.s3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1245s3 implements ProtobufConverter {
    public final Em a(C1194q3 c1194q3) {
        Em em = new Em();
        em.a = c1194q3.a;
        return em;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object fromModel(Object obj) {
        Em em = new Em();
        em.a = ((C1194q3) obj).a;
        return em;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        return new C1194q3(((Em) obj).a);
    }

    public final C1194q3 a(Em em) {
        return new C1194q3(em.a);
    }
}
