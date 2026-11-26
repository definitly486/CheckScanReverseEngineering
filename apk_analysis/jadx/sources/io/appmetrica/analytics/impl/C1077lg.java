package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedInfo;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedProvider;
import io.appmetrica.analytics.coreutils.internal.limitation.TrimmingResult;
import io.appmetrica.analytics.coreutils.internal.limitation.hierarchical.HierarchicalStringTrimmer;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.lg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1077lg implements Converter {
    public final C1132nj a;
    public final HierarchicalStringTrimmer b;
    public final HierarchicalStringTrimmer c;

    public C1077lg() {
        this(new C1132nj(), new HierarchicalStringTrimmer(100), new HierarchicalStringTrimmer(2048));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Li fromModel(Ag ag) {
        Li liFromModel;
        A8 a8 = new A8();
        TrimmingResult<String, BytesTruncatedProvider> trimmingResultTrim = this.b.trim(ag.a);
        a8.a = StringUtils.getUTF8Bytes(trimmingResultTrim.value);
        TrimmingResult<String, BytesTruncatedProvider> trimmingResultTrim2 = this.c.trim(ag.b);
        a8.b = StringUtils.getUTF8Bytes(trimmingResultTrim2.value);
        C1210qj c1210qj = ag.c;
        if (c1210qj != null) {
            liFromModel = this.a.fromModel(c1210qj);
            a8.c = (B8) liFromModel.a;
        } else {
            liFromModel = null;
        }
        BytesTruncatedProvider bytesTruncatedProvider = BytesTruncatedInfo.total(trimmingResultTrim, trimmingResultTrim2, liFromModel);
        bytesTruncatedProvider.getBytesTruncated();
        return new Li(a8, bytesTruncatedProvider);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public C1077lg(C1132nj c1132nj, HierarchicalStringTrimmer hierarchicalStringTrimmer, HierarchicalStringTrimmer hierarchicalStringTrimmer2) {
        this.a = c1132nj;
        this.b = hierarchicalStringTrimmer;
        this.c = hierarchicalStringTrimmer2;
    }

    public final Ag a(Li li) {
        throw new UnsupportedOperationException();
    }
}
