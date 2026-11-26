package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedInfo;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedProvider;
import io.appmetrica.analytics.coreutils.internal.limitation.TrimmingResult;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class Lf implements Converter {
    public final C0803b0 a;
    public final Mf b;

    public Lf() {
        this(new C0803b0(), new Mf(30));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Li fromModel(Nf nf) {
        int bytesTruncated;
        C1377x8 c1377x8 = new C1377x8();
        Li liFromModel = this.a.fromModel(nf.a);
        c1377x8.a = (C1121n8) liFromModel.a;
        TrimmingResult trimmingResultTrim = this.b.trim(nf.b);
        if (xo.a((Collection) trimmingResultTrim.value)) {
            bytesTruncated = 0;
        } else {
            c1377x8.b = new C1121n8[((List) trimmingResultTrim.value).size()];
            bytesTruncated = 0;
            for (int i = 0; i < ((List) trimmingResultTrim.value).size(); i++) {
                Li liFromModel2 = this.a.fromModel((C0829c0) ((List) trimmingResultTrim.value).get(i));
                c1377x8.b[i] = (C1121n8) liFromModel2.a;
                bytesTruncated += liFromModel2.b.getBytesTruncated();
            }
        }
        BytesTruncatedProvider bytesTruncatedProvider = BytesTruncatedInfo.total(liFromModel, trimmingResultTrim, new BytesTruncatedInfo(bytesTruncated));
        bytesTruncatedProvider.getBytesTruncated();
        return new Li(c1377x8, bytesTruncatedProvider);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public Lf(C0803b0 c0803b0, Mf mf) {
        this.a = c0803b0;
        this.b = mf;
    }

    public final Nf a(Li li) {
        throw new UnsupportedOperationException();
    }
}
