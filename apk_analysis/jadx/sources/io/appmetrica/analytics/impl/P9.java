package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;

/* JADX INFO: loaded from: classes5.dex */
public final class P9 implements ProtobufConverter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Gm fromModel(O9 o9) {
        Gm gm = new Gm();
        if (o9 != null) {
            gm.a = o9.a;
        }
        return gm;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        return new O9(((Gm) obj).a);
    }

    public final O9 a(Gm gm) {
        return new O9(gm.a);
    }
}
