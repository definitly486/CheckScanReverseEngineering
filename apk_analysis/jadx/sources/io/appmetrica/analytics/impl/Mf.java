package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.limitation.hierarchical.HierarchicalListTrimmer;

/* JADX INFO: loaded from: classes5.dex */
public final class Mf extends HierarchicalListTrimmer {
    public Mf(int i) {
        super(i);
    }

    @Override // io.appmetrica.analytics.coreutils.internal.limitation.hierarchical.HierarchicalListTrimmer
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final int byteSizeOf(C0829c0 c0829c0) {
        if (c0829c0 == null) {
            return 0;
        }
        return StringUtils.getUtf8BytesLength(c0829c0.b) + 12;
    }
}
