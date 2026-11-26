package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;

/* JADX INFO: loaded from: classes5.dex */
public final class B9 implements ProtobufConverter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1428z9 fromModel(A9 a9) {
        C1428z9 c1428z9 = new C1428z9();
        String str = a9.a;
        if (str != null) {
            c1428z9.a = str.getBytes();
        }
        return c1428z9;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final A9 toModel(C1428z9 c1428z9) {
        return new A9(new String(c1428z9.a));
    }
}
