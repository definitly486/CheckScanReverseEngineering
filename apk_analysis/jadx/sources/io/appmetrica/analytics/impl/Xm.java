package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;

/* JADX INFO: loaded from: classes5.dex */
public final class Xm implements ProtobufConverter {
    public final Lm a(Wm wm) {
        Lm lm = new Lm();
        lm.a = wm.a;
        return lm;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object fromModel(Object obj) {
        Lm lm = new Lm();
        lm.a = ((Wm) obj).a;
        return lm;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        return new Wm(((Lm) obj).a);
    }

    public final Wm a(Lm lm) {
        return new Wm(lm.a);
    }
}
