package io.appmetrica.analytics.coreutils.internal.limitation.hierarchical;

import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedInfo;
import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedProvider;
import io.appmetrica.analytics.coreutils.internal.limitation.TrimmingResult;

/* JADX INFO: loaded from: classes5.dex */
public class HierarchicalStringTrimmer extends BaseHierarchicalTrimmer<String, BytesTruncatedProvider> {
    public HierarchicalStringTrimmer(int i) {
        super(i);
    }

    @Override // io.appmetrica.analytics.coreutils.internal.limitation.hierarchical.HierarchicalTrimmer
    public TrimmingResult<String, BytesTruncatedProvider> trim(String str) {
        int length = 0;
        if (str != null && str.length() > getLimit()) {
            String strSubstring = str.substring(0, getLimit());
            length = str.getBytes().length - strSubstring.getBytes().length;
            str = strSubstring;
        }
        return new TrimmingResult<>(str, new BytesTruncatedInfo(length));
    }
}
