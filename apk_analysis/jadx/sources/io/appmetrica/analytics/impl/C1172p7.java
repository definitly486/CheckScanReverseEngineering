package io.appmetrica.analytics.impl;

import defpackage.jh2;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.protobuf.nano.InvalidProtocolBufferNanoException;
import io.appmetrica.analytics.protobuf.nano.MessageNano;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.p7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1172p7 implements Converter {
    public final C1146o7 a;

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ C1172p7(C1146o7 c1146o7, int i, jh2 jh2Var) {
        if ((i & 1) != 0) {
            c1146o7 = new C1146o7(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }
        this(c1146o7);
    }

    /* JADX WARN: Code duplicated, block: B:5:0x000f A[Catch: InvalidProtocolBufferNanoException -> 0x0015, TRY_LEAVE, TryCatch #0 {InvalidProtocolBufferNanoException -> 0x0015, blocks: (B:3:0x0002, B:5:0x000f), top: B:10:0x0002 }] */
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1198q7 toModel(byte[] bArr) {
        C1426z7 c1426z7;
        if (bArr != null) {
            try {
                c1426z7 = (C1426z7) MessageNano.mergeFrom(new C1426z7(), bArr);
                if (c1426z7 == null) {
                    c1426z7 = new C1426z7();
                }
            } catch (InvalidProtocolBufferNanoException unused) {
                c1426z7 = new C1426z7();
            }
        } else {
            c1426z7 = new C1426z7();
        }
        return this.a.toModel(c1426z7);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object fromModel(Object obj) {
        return MessageNano.toByteArray(this.a.fromModel((C1198q7) obj));
    }

    public C1172p7(C1146o7 c1146o7) {
        this.a = c1146o7;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C1172p7() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final byte[] a(C1198q7 c1198q7) {
        return MessageNano.toByteArray(this.a.fromModel(c1198q7));
    }
}
