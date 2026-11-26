package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.limitation.CollectionTrimInfo;
import io.appmetrica.analytics.coreutils.internal.limitation.TrimmingResult;
import io.appmetrica.analytics.coreutils.internal.limitation.hierarchical.HierarchicalStringListTrimmer;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class Wf implements Converter {
    public final HierarchicalStringListTrimmer a;

    public Wf() {
        this(new HierarchicalStringListTrimmer(20, 100));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Li fromModel(List<String> list) {
        TrimmingResult<List<String>, CollectionTrimInfo> trimmingResultTrim = this.a.trim((List) list);
        List<String> list2 = trimmingResultTrim.value;
        C1427z8[] c1427z8Arr = new C1427z8[0];
        if (list2 != null) {
            c1427z8Arr = new C1427z8[list2.size()];
            for (int i = 0; i < list2.size(); i++) {
                C1427z8 c1427z8 = new C1427z8();
                c1427z8Arr[i] = c1427z8;
                c1427z8.a = StringUtils.getUTF8Bytes(list2.get(i));
            }
        }
        trimmingResultTrim.getBytesTruncated();
        return new Li(c1427z8Arr, trimmingResultTrim.metaInfo);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public Wf(HierarchicalStringListTrimmer hierarchicalStringListTrimmer) {
        this.a = hierarchicalStringListTrimmer;
    }

    public final List<String> a(Li li) {
        throw new UnsupportedOperationException();
    }
}
