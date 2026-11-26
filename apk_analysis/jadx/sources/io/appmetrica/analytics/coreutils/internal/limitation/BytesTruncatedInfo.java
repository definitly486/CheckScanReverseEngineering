package io.appmetrica.analytics.coreutils.internal.limitation;

import defpackage.rg;

/* JADX INFO: loaded from: classes5.dex */
public class BytesTruncatedInfo implements BytesTruncatedProvider {
    public final int bytesTruncated;

    public BytesTruncatedInfo(int i) {
        this.bytesTruncated = i;
    }

    public static BytesTruncatedProvider total(BytesTruncatedProvider... bytesTruncatedProviderArr) {
        return new BytesTruncatedInfo(totalBytesTruncated(bytesTruncatedProviderArr));
    }

    public static int totalBytesTruncated(BytesTruncatedProvider... bytesTruncatedProviderArr) {
        int bytesTruncated = 0;
        for (BytesTruncatedProvider bytesTruncatedProvider : bytesTruncatedProviderArr) {
            if (bytesTruncatedProvider != null) {
                bytesTruncated = bytesTruncatedProvider.getBytesTruncated() + bytesTruncated;
            }
        }
        return bytesTruncated;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedProvider
    public int getBytesTruncated() {
        return this.bytesTruncated;
    }

    public String toString() {
        return rg.h(new StringBuilder("BytesTruncatedInfo{bytesTruncated="), this.bytesTruncated, '}');
    }
}
