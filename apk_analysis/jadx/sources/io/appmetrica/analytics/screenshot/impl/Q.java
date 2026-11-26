package io.appmetrica.analytics.screenshot.impl;

import defpackage.jh2;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.protobuf.nano.MessageNano;

/* JADX INFO: loaded from: classes5.dex */
public final class Q implements Converter {
    public final F a;

    public /* synthetic */ Q(F f, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new F(null, null, null, 7, null) : f);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final P toModel(byte[] bArr) {
        A a;
        try {
            a = (A) MessageNano.mergeFrom(new A(), bArr);
        } catch (Throwable unused) {
            a = new A();
        }
        return this.a.toModel(a);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object fromModel(Object obj) {
        return MessageNano.toByteArray(this.a.fromModel((P) obj));
    }

    public Q(F f) {
        this.a = f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Q() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final byte[] a(P p) {
        return MessageNano.toByteArray(this.a.fromModel(p));
    }
}
