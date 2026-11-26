package io.appmetrica.analytics.coreutils.internal.limitation.hierarchical;

import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedProvider;
import io.appmetrica.analytics.coreutils.internal.limitation.TrimmingResult;

/* JADX INFO: loaded from: classes5.dex */
public interface HierarchicalTrimmer<V, M extends BytesTruncatedProvider> {
    TrimmingResult<V, M> trim(V v);
}
