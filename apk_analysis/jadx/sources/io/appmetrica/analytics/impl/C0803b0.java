package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedInfo;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedProvider;
import io.appmetrica.analytics.coreutils.internal.limitation.TrimmingResult;
import io.appmetrica.analytics.coreutils.internal.limitation.hierarchical.HierarchicalStringTrimmer;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.b0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0803b0 implements Converter {
    public final J7 a;
    public final HierarchicalStringTrimmer b;

    public C0803b0() {
        this(new J7(), new HierarchicalStringTrimmer(20));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Li fromModel(C0829c0 c0829c0) {
        C1121n8 c1121n8 = new C1121n8();
        c1121n8.b = this.a.fromModel(c0829c0.a);
        TrimmingResult<String, BytesTruncatedProvider> trimmingResultTrim = this.b.trim(c0829c0.b);
        c1121n8.a = StringUtils.getUTF8Bytes(trimmingResultTrim.value);
        BytesTruncatedProvider bytesTruncatedProvider = BytesTruncatedInfo.total(trimmingResultTrim);
        bytesTruncatedProvider.getBytesTruncated();
        return new Li(c1121n8, bytesTruncatedProvider);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public C0803b0(J7 j7, HierarchicalStringTrimmer hierarchicalStringTrimmer) {
        this.a = j7;
        this.b = hierarchicalStringTrimmer;
    }

    public final C0829c0 a(Li li) {
        throw new UnsupportedOperationException();
    }
}
