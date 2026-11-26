package io.appmetrica.analytics.impl;

import defpackage.jh2;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;

/* JADX INFO: loaded from: classes5.dex */
public final class D7 implements Converter {
    public final C7 a;

    public /* synthetic */ D7(C7 c7, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new C7(null, 1, null) : c7);
    }

    /* JADX WARN: Code duplicated, block: B:5:0x000f A[Catch: InvalidProtocolBufferNanoException -> 0x0015, TRY_LEAVE, TryCatch #0 {InvalidProtocolBufferNanoException -> 0x0015, blocks: (B:3:0x0002, B:5:0x000f), top: B:10:0x0002 }] */
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final E7 toModel(byte[] bArr) {
        B7 b7;
        if (bArr != null) {
            try {
                b7 = (B7) MessageNano.mergeFrom(new B7(), bArr);
                if (b7 == null) {
                    b7 = new B7();
                }
            } catch (InvalidProtocolBufferNanoException unused) {
                b7 = new B7();
            }
        } else {
            b7 = new B7();
        }
        return this.a.toModel(b7);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object fromModel(Object obj) {
        return MessageNano.toByteArray(this.a.fromModel((E7) obj));
    }

    public D7(C7 c7) {
        this.a = c7;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public D7() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final byte[] a(E7 e7) {
        return MessageNano.toByteArray(this.a.fromModel(e7));
    }
}
