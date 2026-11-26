package io.appmetrica.analytics.coreutils.internal.limitation.hierarchical;

import io.appmetrica.analytics.coreutils.internal.StringUtils;

/* JADX INFO: loaded from: classes5.dex */
public class HierarchicalStringListTrimmer extends HierarchicalListTrimmer<String> {
    public HierarchicalStringListTrimmer(int i, int i2) {
        this(i, new HierarchicalStringTrimmer(i2));
    }

    @Override // io.appmetrica.analytics.coreutils.internal.limitation.hierarchical.HierarchicalListTrimmer
    public int byteSizeOf(String str) {
        return StringUtils.getUTF8Bytes(str).length;
    }

    public HierarchicalStringListTrimmer(int i, HierarchicalStringTrimmer hierarchicalStringTrimmer) {
        super(i, hierarchicalStringTrimmer);
    }
}
