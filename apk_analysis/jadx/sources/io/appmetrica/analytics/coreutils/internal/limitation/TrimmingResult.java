package io.appmetrica.analytics.coreutils.internal.limitation;

import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedProvider;

/* JADX INFO: loaded from: classes5.dex */
public class TrimmingResult<V, M extends BytesTruncatedProvider> implements BytesTruncatedProvider {
    public final M metaInfo;
    public final V value;

    public TrimmingResult(V v, M m) {
        this.value = v;
        this.metaInfo = m;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedProvider
    public int getBytesTruncated() {
        return this.metaInfo.getBytesTruncated();
    }

    public String toString() {
        return "TrimmingResult{value=" + this.value + ", metaInfo=" + this.metaInfo + '}';
    }
}
