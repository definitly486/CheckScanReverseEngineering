package io.appmetrica.analytics.coreutils.internal.limitation;

import defpackage.rg;

/* JADX INFO: loaded from: classes5.dex */
public class CollectionTrimInfo extends BytesTruncatedInfo {
    public final int itemsDropped;

    public CollectionTrimInfo(int i, int i2) {
        super(i2);
        this.itemsDropped = i;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.limitation.BytesTruncatedInfo
    public String toString() {
        StringBuilder sb = new StringBuilder("CollectionTrimInfo{itemsDropped=");
        sb.append(this.itemsDropped);
        sb.append(", bytesTruncated=");
        return rg.h(sb, this.bytesTruncated, '}');
    }
}
