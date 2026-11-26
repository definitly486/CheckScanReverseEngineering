package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedInfo;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedProvider;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.vl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1340vl implements InterfaceC1095m8 {
    public final C1132nj a;
    public final Uf b;

    public C1340vl() {
        this(new C1132nj(), new Uf());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final List<Li> fromModel(C1315ul c1315ul) {
        F8 f8 = new F8();
        f8.a = 2;
        f8.c = new C8();
        Li liFromModel = this.a.fromModel(c1315ul.b);
        f8.c.b = (B8) liFromModel.a;
        Li liFromModel2 = this.b.fromModel(c1315ul.a);
        f8.c.a = (C1402y8) liFromModel2.a;
        BytesTruncatedProvider bytesTruncatedProvider = BytesTruncatedInfo.total(liFromModel, liFromModel2);
        bytesTruncatedProvider.getBytesTruncated();
        return Collections.singletonList(new Li(f8, bytesTruncatedProvider));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public C1340vl(C1132nj c1132nj, Uf uf) {
        this.a = c1132nj;
        this.b = uf;
    }

    public final C1315ul a(List<Li> list) {
        throw new UnsupportedOperationException();
    }
}
