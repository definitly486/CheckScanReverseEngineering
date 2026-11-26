package io.appmetrica.analytics.productflow.impl;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedInfo;
import io.appmetrica.analytics.coreutils.internal.limitation.CollectionTrimInfo;
import io.appmetrica.analytics.coreutils.internal.limitation.TrimmingResult;
import io.appmetrica.analytics.coreutils.internal.limitation.hierarchical.HierarchicalValueSizeOrderBasedWithBytesLimitStringMapTrimmer;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class p {
    public final HierarchicalValueSizeOrderBasedWithBytesLimitStringMapTrimmer a;

    public p(HierarchicalValueSizeOrderBasedWithBytesLimitStringMapTrimmer hierarchicalValueSizeOrderBasedWithBytesLimitStringMapTrimmer) {
        this.a = hierarchicalValueSizeOrderBasedWithBytesLimitStringMapTrimmer;
    }

    public final TrimmingResult a(Map map) {
        t tVar = new t();
        TrimmingResult<Map<String, String>, CollectionTrimInfo> trimmingResultTrim = this.a.trim((Map<String, String>) map);
        tVar.b = ((CollectionTrimInfo) trimmingResultTrim.metaInfo).itemsDropped;
        Map<String, String> map2 = trimmingResultTrim.value;
        if (map2 != null) {
            tVar.a = new s[map2.size()];
            int i = 0;
            for (Map.Entry<String, String> entry : map2.entrySet()) {
                tVar.a[i] = new s();
                tVar.a[i].a = StringUtils.getUTF8Bytes(entry.getKey());
                tVar.a[i].b = StringUtils.getUTF8Bytes(entry.getValue());
                i++;
            }
        }
        ((CollectionTrimInfo) trimmingResultTrim.metaInfo).getBytesTruncated();
        return new TrimmingResult(tVar, new BytesTruncatedInfo(BytesTruncatedInfo.total(trimmingResultTrim).getBytesTruncated()));
    }
}
