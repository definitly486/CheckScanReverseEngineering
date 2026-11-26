package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedInfo;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedProvider;
import io.appmetrica.analytics.coreutils.internal.limitation.TrimmingResult;
import io.appmetrica.analytics.coreutils.internal.limitation.hierarchical.HierarchicalStringTrimmer;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.nj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1132nj implements Converter {
    public final Ce a;
    public final C1422z3 b;
    public final HierarchicalStringTrimmer c;
    public final HierarchicalStringTrimmer d;

    public C1132nj() {
        this(new Ce(), new C1422z3(), new HierarchicalStringTrimmer(100), new HierarchicalStringTrimmer(1000));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Li fromModel(C1210qj c1210qj) {
        Li liFromModel;
        B8 b8 = new B8();
        TrimmingResult<String, BytesTruncatedProvider> trimmingResultTrim = this.c.trim(c1210qj.a);
        b8.a = StringUtils.getUTF8Bytes(trimmingResultTrim.value);
        List<String> list = c1210qj.b;
        Li liA = null;
        if (list != null) {
            liFromModel = this.b.fromModel(list);
            b8.b = (C1199q8) liFromModel.a;
        } else {
            liFromModel = null;
        }
        TrimmingResult<String, BytesTruncatedProvider> trimmingResultTrim2 = this.d.trim(c1210qj.c);
        b8.c = StringUtils.getUTF8Bytes(trimmingResultTrim2.value);
        Map<String, String> map = c1210qj.d;
        if (map != null) {
            liA = this.a.fromModel(map);
            b8.d = (C1352w8) liA.a;
        }
        BytesTruncatedProvider bytesTruncatedProvider = BytesTruncatedInfo.total(trimmingResultTrim, liFromModel, trimmingResultTrim2, liA);
        bytesTruncatedProvider.getBytesTruncated();
        return new Li(b8, bytesTruncatedProvider);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public C1132nj(Ce ce, C1422z3 c1422z3, HierarchicalStringTrimmer hierarchicalStringTrimmer, HierarchicalStringTrimmer hierarchicalStringTrimmer2) {
        this.a = ce;
        this.b = c1422z3;
        this.c = hierarchicalStringTrimmer;
        this.d = hierarchicalStringTrimmer2;
    }

    public final C1210qj a(Li li) {
        throw new UnsupportedOperationException();
    }
}
