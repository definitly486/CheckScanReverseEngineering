package io.appmetrica.analytics.coreutils.internal.limitation.hierarchical;

import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedProvider;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseHierarchicalTrimmer<V, M extends BytesTruncatedProvider> implements HierarchicalTrimmer<V, M> {
    private final int a;

    public BaseHierarchicalTrimmer(int i) {
        this.a = i;
    }

    public int getLimit() {
        return this.a;
    }
}
