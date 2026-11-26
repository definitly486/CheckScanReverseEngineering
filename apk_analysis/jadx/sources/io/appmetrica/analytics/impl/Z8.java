package io.appmetrica.analytics.impl;

import android.content.ContentValues;

/* JADX INFO: loaded from: classes5.dex */
public final class Z8 {
    public final String a;
    public String b;
    public final Long c;
    public final Long d;
    public final Long e;
    public final Long f;
    public final C1326v7 g;
    public final EnumC1176pb h;
    public final Integer i;
    public final String j;
    public final Integer k;
    public final Integer l;
    public final String m;
    public final String n;
    public final U8 o;
    public final EnumC1252sa p;
    public final EnumC1403y9 q;
    public final Boolean r;
    public final Integer s;
    public final byte[] t;
    public final String u;
    public final long v;
    public final Integer w;

    /* JADX WARN: Multi-variable type inference failed */
    public Z8(ContentValues contentValues) {
        C1223r7 model = new C1249s7(null, 1, 0 == true ? 1 : 0).toModel(contentValues);
        this.a = model.a().l();
        this.b = model.a().r();
        this.c = model.c();
        this.d = model.b();
        this.e = model.a().m();
        this.f = model.d();
        this.g = model.a().k();
        this.h = model.e();
        this.i = model.a().f();
        this.j = model.a().h();
        this.k = model.a().q();
        this.l = model.a().e();
        this.m = model.a().d();
        this.n = model.a().o();
        U8 u8G = model.a().g();
        this.o = u8G == null ? U8.a(null) : u8G;
        EnumC1252sa enumC1252saJ = model.a().j();
        this.p = enumC1252saJ == null ? EnumC1252sa.a(null) : enumC1252saJ;
        this.q = model.a().p();
        this.r = model.a().c();
        this.s = model.a().n();
        this.t = model.a().i();
        String strA = model.a().a();
        this.u = strA == null ? "{}" : strA;
        Long lB = model.a().b();
        this.v = lB != null ? lB.longValue() : 0L;
        this.w = model.a().s();
    }
}
