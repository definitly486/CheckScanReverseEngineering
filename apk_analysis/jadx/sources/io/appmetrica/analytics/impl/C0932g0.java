package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.g0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0932g0 implements ProtobufConverter {
    public final Z a;
    public final C1248s6 b;

    public C0932g0() {
        this(new Z(new Ln()), new C1248s6());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0861d6 fromModel(C0906f0 c0906f0) {
        C0861d6 c0861d6 = new C0861d6();
        c0861d6.a = this.a.fromModel(c0906f0.a);
        String str = c0906f0.b;
        if (str != null) {
            c0861d6.b = str;
        }
        c0861d6.c = this.b.a(c0906f0.c);
        return c0861d6;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    public C0932g0(Z z, C1248s6 c1248s6) {
        this.a = z;
        this.b = c1248s6;
    }

    public final C0906f0 a(C0861d6 c0861d6) {
        throw new UnsupportedOperationException();
    }
}
