package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ua, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1304ua implements ProtobufConverter {
    public final AbstractC1358we a;

    public C1304ua() {
        this(new C1005im());
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1423z4 toModel(Hm hm) {
        C1373x4 c1373x4 = new C1373x4();
        c1373x4.d = hm.d;
        c1373x4.c = hm.c;
        c1373x4.b = hm.b;
        c1373x4.a = hm.a;
        c1373x4.e = hm.e;
        c1373x4.f = this.a.a(hm.f);
        return new C1423z4(c1373x4);
    }

    public C1304ua(C1005im c1005im) {
        this.a = c1005im;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Hm fromModel(C1423z4 c1423z4) {
        Hm hm = new Hm();
        hm.b = c1423z4.b;
        hm.a = c1423z4.a;
        hm.c = c1423z4.c;
        hm.d = c1423z4.d;
        hm.e = c1423z4.e;
        hm.f = this.a.a(c1423z4.f);
        return hm;
    }
}
