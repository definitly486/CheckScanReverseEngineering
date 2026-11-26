package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedInfo;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedProvider;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.xl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1390xl implements InterfaceC1095m8 {
    public final Uf a;
    public final C1077lg b;

    public C1390xl() {
        this(new Uf(), new C1077lg());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final List<Li> fromModel(C1365wl c1365wl) {
        Li liFromModel;
        F8 f8 = new F8();
        f8.a = 3;
        f8.d = new D8();
        Li liFromModel2 = this.a.fromModel(c1365wl.a);
        f8.d.a = (C1402y8) liFromModel2.a;
        Ag ag = c1365wl.b;
        if (ag != null) {
            liFromModel = this.b.fromModel(ag);
            f8.d.b = (A8) liFromModel.a;
        } else {
            liFromModel = null;
        }
        BytesTruncatedProvider bytesTruncatedProvider = BytesTruncatedInfo.total(liFromModel2, liFromModel);
        bytesTruncatedProvider.getBytesTruncated();
        return Collections.singletonList(new Li(f8, bytesTruncatedProvider));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public C1390xl(Uf uf, C1077lg c1077lg) {
        this.a = uf;
        this.b = c1077lg;
    }

    public final C1365wl a(List<Li> list) {
        throw new UnsupportedOperationException();
    }
}
