package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedInfo;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedProvider;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.x3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1372x3 implements Converter {
    public final Uf a;
    public final J7 b;
    public final Lf c;
    public final C1077lg d;

    public C1372x3() {
        this(new Uf(), new J7(), new Lf(), new C1077lg());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Li fromModel(C1397y3 c1397y3) {
        Li liA;
        C1173p8 c1173p8 = new C1173p8();
        Li liA2 = this.a.fromModel(c1397y3.a);
        c1173p8.a = (C1402y8) liA2.a;
        c1173p8.c = this.b.fromModel(c1397y3.b);
        Li liA3 = this.c.fromModel(c1397y3.c);
        c1173p8.d = (C1377x8) liA3.a;
        Ag ag = c1397y3.d;
        if (ag != null) {
            liA = this.d.fromModel(ag);
            c1173p8.b = (A8) liA.a;
        } else {
            liA = null;
        }
        BytesTruncatedProvider bytesTruncatedProvider = BytesTruncatedInfo.total(liA2, liA3, liA);
        bytesTruncatedProvider.getBytesTruncated();
        return new Li(c1173p8, bytesTruncatedProvider);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public C1372x3(Uf uf, J7 j7, Lf lf, C1077lg c1077lg) {
        this.a = uf;
        this.b = j7;
        this.c = lf;
        this.d = c1077lg;
    }

    public final C1397y3 a(Li li) {
        throw new UnsupportedOperationException();
    }
}
