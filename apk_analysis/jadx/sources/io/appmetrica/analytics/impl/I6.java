package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

/* JADX INFO: loaded from: classes5.dex */
public final class I6 implements ProtobufConverter {
    public final Hg a;

    public I6() {
        this(new Hg());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0990i6 fromModel(H6 h6) {
        C0990i6 c0990i6FromModel = this.a.fromModel(h6.a);
        c0990i6FromModel.g = 1;
        C0964h6 c0964h6 = new C0964h6();
        c0990i6FromModel.h = c0964h6;
        c0964h6.a = StringUtils.correctIllFormedString(h6.b);
        return c0990i6FromModel;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public I6(Hg hg) {
        this.a = hg;
    }

    public final H6 a(C0990i6 c0990i6) {
        throw new UnsupportedOperationException();
    }
}
