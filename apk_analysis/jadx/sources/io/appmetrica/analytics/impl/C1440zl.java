package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedInfo;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedProvider;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.zl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1440zl implements InterfaceC1095m8 {
    public final C1132nj a;

    public C1440zl() {
        this(new C1132nj());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final List<Li> fromModel(C1415yl c1415yl) {
        F8 f8 = new F8();
        f8.a = 1;
        f8.b = new E8();
        Li liFromModel = this.a.fromModel(c1415yl.a);
        f8.b.a = (B8) liFromModel.a;
        BytesTruncatedProvider bytesTruncatedProvider = BytesTruncatedInfo.total(liFromModel);
        liFromModel.b.getBytesTruncated();
        return Collections.singletonList(new Li(f8, bytesTruncatedProvider));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public C1440zl(C1132nj c1132nj) {
        this.a = c1132nj;
    }

    public final C1415yl a(List<Li> list) {
        throw new UnsupportedOperationException();
    }
}
