package io.appmetrica.analytics.impl;

import defpackage.jh2;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;

/* JADX INFO: loaded from: classes5.dex */
public final class C7 implements ProtobufConverter {
    public final C1333ve a;

    public /* synthetic */ C7(C1333ve c1333ve, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new C1333ve() : c1333ve);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final E7 toModel(B7 b7) {
        B7 b8 = new B7();
        long j = b7.a;
        Long lValueOf = Long.valueOf(j);
        if (j == b8.a) {
            lValueOf = null;
        }
        long j2 = b7.b;
        return new E7(lValueOf, j2 != b8.b ? Long.valueOf(j2) : null, this.a.a(b7.c));
    }

    public C7(C1333ve c1333ve) {
        this.a = c1333ve;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C7() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final B7 fromModel(E7 e7) {
        B7 b7 = new B7();
        Long l = e7.a;
        if (l != null) {
            b7.a = l.longValue();
        }
        Long l2 = e7.b;
        if (l2 != null) {
            b7.b = l2.longValue();
        }
        Boolean bool = e7.c;
        if (bool != null) {
            b7.c = this.a.fromModel(bool).intValue();
        }
        return b7;
    }
}
