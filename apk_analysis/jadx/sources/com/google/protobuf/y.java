package com.google.protobuf;

/* JADX INFO: loaded from: classes4.dex */
public interface y {
    x a();

    x forMapData(Object obj);

    w.a<?, ?> forMapMetadata(Object obj);

    x forMutableMapData(Object obj);

    int getSerializedSize(int i, Object obj, Object obj2);

    boolean isImmutable(Object obj);

    x mergeFrom(Object obj, Object obj2);

    Object toImmutable(Object obj);
}
