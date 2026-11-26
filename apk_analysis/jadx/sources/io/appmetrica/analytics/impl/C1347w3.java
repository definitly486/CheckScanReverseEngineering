package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedInfo;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedProvider;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.w3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1347w3 implements InterfaceC1095m8 {
    public final C1372x3 a;

    public C1347w3() {
        this(new C1372x3());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final List<Li> fromModel(C1322v3 c1322v3) {
        F8 f8 = new F8();
        f8.e = new C1147o8();
        Li liFromModel = this.a.fromModel(c1322v3.b);
        f8.e.a = (C1173p8) liFromModel.a;
        f8.a = c1322v3.a;
        BytesTruncatedProvider bytesTruncatedProvider = BytesTruncatedInfo.total(liFromModel);
        bytesTruncatedProvider.getBytesTruncated();
        return Collections.singletonList(new Li(f8, bytesTruncatedProvider));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public C1347w3(C1372x3 c1372x3) {
        this.a = c1372x3;
    }

    public final C1322v3 a(List<Li> list) {
        throw new UnsupportedOperationException();
    }
}
