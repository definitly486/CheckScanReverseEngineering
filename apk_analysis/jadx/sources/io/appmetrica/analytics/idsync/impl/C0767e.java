package io.appmetrica.analytics.idsync.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.protobuf.nano.MessageNano;

/* JADX INFO: renamed from: io.appmetrica.analytics.idsync.impl.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0767e implements Converter {
    public final C0768f a;

    public C0767e(C0768f c0768f) {
        this.a = c0768f;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0765c toModel(byte[] bArr) {
        return this.a.toModel((p) MessageNano.mergeFrom(new p(), bArr));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object fromModel(Object obj) {
        return MessageNano.toByteArray(this.a.fromModel((C0765c) obj));
    }

    public final byte[] a(C0765c c0765c) {
        return MessageNano.toByteArray(this.a.fromModel(c0765c));
    }
}
