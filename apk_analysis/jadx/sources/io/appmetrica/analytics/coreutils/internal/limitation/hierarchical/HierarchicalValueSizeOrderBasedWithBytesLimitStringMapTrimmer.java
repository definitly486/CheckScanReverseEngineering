package io.appmetrica.analytics.coreutils.internal.limitation.hierarchical;

import io.appmetrica.analytics.coreutils.impl.a;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedProvider;
import io.appmetrica.analytics.coreutils.internal.limitation.CollectionTrimInfo;
import io.appmetrica.analytics.coreutils.internal.limitation.TrimmingResult;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public class HierarchicalValueSizeOrderBasedWithBytesLimitStringMapTrimmer extends BaseHierarchicalTrimmer<Map<String, String>, CollectionTrimInfo> {
    private final HierarchicalStringTrimmer b;
    private final HierarchicalStringTrimmer c;
    private final a d;

    public HierarchicalValueSizeOrderBasedWithBytesLimitStringMapTrimmer(int i, HierarchicalStringTrimmer hierarchicalStringTrimmer, HierarchicalStringTrimmer hierarchicalStringTrimmer2) {
        super(i);
        this.d = new a();
        this.b = hierarchicalStringTrimmer;
        this.c = hierarchicalStringTrimmer2;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.limitation.hierarchical.HierarchicalTrimmer
    public TrimmingResult<Map<String, String>, CollectionTrimInfo> trim(Map<String, String> map) {
        HashMap map2;
        int bytesTruncated;
        int i = 0;
        if (map != null) {
            map2 = new HashMap();
            Set<Map.Entry<String, String>> setEntrySet = map.entrySet();
            Map.Entry[] entryArr = (Map.Entry[]) setEntrySet.toArray(new Map.Entry[setEntrySet.size()]);
            Arrays.sort(entryArr, this.d);
            int length = entryArr.length;
            bytesTruncated = 0;
            int i2 = 0;
            boolean z = false;
            int i3 = 0;
            while (i < length) {
                Map.Entry entry = entryArr[i];
                TrimmingResult<String, BytesTruncatedProvider> trimmingResultTrim = this.b.trim((String) entry.getKey());
                TrimmingResult<String, BytesTruncatedProvider> trimmingResultTrim2 = this.c.trim((String) entry.getValue());
                int utf8BytesLength = StringUtils.getUtf8BytesLength((String) entry.getValue()) + StringUtils.getUtf8BytesLength((String) entry.getKey());
                int utf8BytesLength2 = StringUtils.getUtf8BytesLength(trimmingResultTrim2.value) + StringUtils.getUtf8BytesLength(trimmingResultTrim.value);
                if (z || utf8BytesLength2 + i3 > getLimit()) {
                    i2++;
                    bytesTruncated += utf8BytesLength;
                    z = true;
                } else {
                    bytesTruncated = trimmingResultTrim2.getBytesTruncated() + trimmingResultTrim.getBytesTruncated() + bytesTruncated;
                    int utf8BytesLength3 = StringUtils.getUtf8BytesLength(trimmingResultTrim2.value) + StringUtils.getUtf8BytesLength(trimmingResultTrim.value) + i3;
                    map2.put(trimmingResultTrim.value, trimmingResultTrim2.value);
                    i3 = utf8BytesLength3;
                }
                i++;
            }
            i = i2;
        } else {
            map2 = null;
            bytesTruncated = 0;
        }
        return new TrimmingResult<>(map2, new CollectionTrimInfo(i, bytesTruncated));
    }

    public HierarchicalValueSizeOrderBasedWithBytesLimitStringMapTrimmer(int i, int i2, int i3) {
        this(i, new HierarchicalStringTrimmer(i2), new HierarchicalStringTrimmer(i3));
    }
}
