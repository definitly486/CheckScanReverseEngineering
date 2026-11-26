package io.appmetrica.analytics.billing.impl;

import defpackage.jh2;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.protobuf.nano.MessageNano;

/* JADX INFO: loaded from: classes5.dex */
public final class z implements Converter {
    public final p a;

    public /* synthetic */ z(p pVar, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new p(null, 1, null) : pVar);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final B toModel(byte[] bArr) {
        r rVar;
        try {
            rVar = (r) MessageNano.mergeFrom(new r(), bArr);
        } catch (Throwable unused) {
            rVar = new r();
        }
        return this.a.toModel(rVar);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object fromModel(Object obj) {
        return MessageNano.toByteArray(this.a.fromModel((B) obj));
    }

    public z(p pVar) {
        this.a = pVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public z() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final byte[] a(B b) {
        return MessageNano.toByteArray(this.a.fromModel(b));
    }
}
