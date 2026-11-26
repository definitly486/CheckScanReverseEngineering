package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;

/* JADX INFO: loaded from: classes5.dex */
public final class Sl implements ProtobufConverter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1041k6 fromModel(Tl tl) {
        C1041k6 c1041k6 = new C1041k6();
        c1041k6.a = (String) WrapUtils.getOrDefault(tl.a, c1041k6.a);
        c1041k6.b = (String) WrapUtils.getOrDefault(tl.b, c1041k6.b);
        c1041k6.c = ((Integer) WrapUtils.getOrDefault(tl.c, Integer.valueOf(c1041k6.c))).intValue();
        c1041k6.f = ((Integer) WrapUtils.getOrDefault(tl.d, Integer.valueOf(c1041k6.f))).intValue();
        c1041k6.d = (String) WrapUtils.getOrDefault(tl.e, c1041k6.d);
        c1041k6.e = ((Boolean) WrapUtils.getOrDefault(tl.f, Boolean.valueOf(c1041k6.e))).booleanValue();
        return c1041k6;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final Tl a(C1041k6 c1041k6) {
        throw new UnsupportedOperationException();
    }
}
