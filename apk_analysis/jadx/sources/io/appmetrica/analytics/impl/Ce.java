package io.appmetrica.analytics.impl;

import androidx.media3.datasource.cache.CacheDataSink;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.limitation.CollectionTrimInfo;
import io.appmetrica.analytics.coreutils.internal.limitation.TrimmingResult;
import io.appmetrica.analytics.coreutils.internal.limitation.hierarchical.HierarchicalValueSizeOrderBasedWithBytesLimitStringMapTrimmer;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class Ce implements Converter {
    public final HierarchicalValueSizeOrderBasedWithBytesLimitStringMapTrimmer a;

    public Ce() {
        this(new HierarchicalValueSizeOrderBasedWithBytesLimitStringMapTrimmer(CacheDataSink.DEFAULT_BUFFER_SIZE, 100, 1000));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Li fromModel(Map<String, String> map) {
        TrimmingResult<Map<String, String>, CollectionTrimInfo> trimmingResultTrim = this.a.trim(map);
        C1352w8 c1352w8 = new C1352w8();
        c1352w8.b = ((CollectionTrimInfo) trimmingResultTrim.metaInfo).itemsDropped;
        Map<String, String> map2 = trimmingResultTrim.value;
        if (map2 != null) {
            c1352w8.a = new C1327v8[map2.size()];
            int i = 0;
            for (Map.Entry<String, String> entry : map2.entrySet()) {
                c1352w8.a[i] = new C1327v8();
                c1352w8.a[i].a = StringUtils.getUTF8Bytes(entry.getKey());
                c1352w8.a[i].b = StringUtils.getUTF8Bytes(entry.getValue());
                i++;
            }
        }
        M m = trimmingResultTrim.metaInfo;
        int i2 = ((CollectionTrimInfo) m).bytesTruncated;
        return new Li(c1352w8, m);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public Ce(HierarchicalValueSizeOrderBasedWithBytesLimitStringMapTrimmer hierarchicalValueSizeOrderBasedWithBytesLimitStringMapTrimmer) {
        this.a = hierarchicalValueSizeOrderBasedWithBytesLimitStringMapTrimmer;
    }

    public final Map<String, String> a(Li li) {
        throw new UnsupportedOperationException();
    }
}
