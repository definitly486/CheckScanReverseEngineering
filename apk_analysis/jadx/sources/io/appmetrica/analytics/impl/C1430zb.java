package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.protobuf.nano.MessageNano;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.zb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1430zb implements Converter {
    public final Zc a;

    public C1430zb() {
        this(new Zc(new Cdo()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final byte[] fromModel(C0853co c0853co) {
        return MessageNano.toByteArray((MessageNano) this.a.a.fromModel(c0853co));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public C1430zb(Zc zc) {
        this.a = zc;
    }

    public final C0853co a(byte[] bArr) {
        throw new UnsupportedOperationException();
    }
}
