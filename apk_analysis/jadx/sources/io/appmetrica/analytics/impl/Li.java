package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedProvider;

/* JADX INFO: loaded from: classes5.dex */
public final class Li implements BytesTruncatedProvider {
    public final Object a;
    public final BytesTruncatedProvider b;

    public Li(Object obj, BytesTruncatedProvider bytesTruncatedProvider) {
        this.a = obj;
        this.b = bytesTruncatedProvider;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedProvider
    public final int getBytesTruncated() {
        return this.b.getBytesTruncated();
    }

    public final String toString() {
        return "Result{result=" + this.a + ", metaInfo=" + this.b + '}';
    }
}
