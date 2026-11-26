package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.limitation.CollectionTrimInfo;
import io.appmetrica.analytics.coreutils.internal.limitation.TrimmingResult;
import io.appmetrica.analytics.coreutils.internal.limitation.hierarchical.HierarchicalStringListTrimmer;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.z3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1422z3 implements Converter {
    public final HierarchicalStringListTrimmer a;

    public C1422z3() {
        this(new HierarchicalStringListTrimmer(20, 100));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Li fromModel(List<String> list) {
        TrimmingResult<List<String>, CollectionTrimInfo> trimmingResultTrim = this.a.trim((List) list);
        C1199q8 c1199q8 = new C1199q8();
        c1199q8.a = StringUtils.getUTF8Bytes(trimmingResultTrim.value);
        M m = trimmingResultTrim.metaInfo;
        int i = ((CollectionTrimInfo) m).bytesTruncated;
        return new Li(c1199q8, m);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public C1422z3(HierarchicalStringListTrimmer hierarchicalStringListTrimmer) {
        this.a = hierarchicalStringListTrimmer;
    }

    public final List<String> a(Li li) {
        throw new UnsupportedOperationException();
    }
}
