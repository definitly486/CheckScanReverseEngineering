package io.appmetrica.analytics.impl;

import defpackage.aa4;
import defpackage.jh2;
import io.appmetrica.analytics.coreapi.internal.data.Converter;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.w7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1351w7 implements Converter {
    public final C1333ve a;

    public /* synthetic */ C1351w7(C1333ve c1333ve, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new C1333ve() : c1333ve);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1326v7 toModel(A7 a7) {
        if (a7 == null) {
            return new C1326v7(null, null, null, null, null, null, null, null, null, null);
        }
        A7 a8 = new A7();
        Boolean boolA = this.a.a(a7.a);
        double d = a7.c;
        Double dValueOf = Double.valueOf(d);
        if (d == a8.c) {
            dValueOf = null;
        }
        double d2 = a7.b;
        Double dValueOf2 = !(d2 == a8.b) ? Double.valueOf(d2) : null;
        long j = a7.h;
        Long lValueOf = j != a8.h ? Long.valueOf(j) : null;
        int i = a7.f;
        Integer numValueOf = i != a8.f ? Integer.valueOf(i) : null;
        int i2 = a7.e;
        Integer numValueOf2 = i2 != a8.e ? Integer.valueOf(i2) : null;
        int i3 = a7.g;
        Integer numValueOf3 = i3 != a8.g ? Integer.valueOf(i3) : null;
        int i4 = a7.d;
        Integer numValueOf4 = i4 != a8.d ? Integer.valueOf(i4) : null;
        String str = a7.i;
        String str2 = !aa4.e(str, a8.i) ? str : null;
        String str3 = a7.j;
        return new C1326v7(boolA, dValueOf2, dValueOf, numValueOf4, numValueOf2, numValueOf, numValueOf3, lValueOf, str2, !aa4.e(str3, a8.j) ? str3 : null);
    }

    public C1351w7(C1333ve c1333ve) {
        this.a = c1333ve;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C1351w7() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final A7 fromModel(C1326v7 c1326v7) {
        A7 a7 = new A7();
        Boolean bool = c1326v7.a;
        if (bool != null) {
            a7.a = this.a.fromModel(bool).intValue();
        }
        Double d = c1326v7.c;
        if (d != null) {
            a7.c = d.doubleValue();
        }
        Double d2 = c1326v7.b;
        if (d2 != null) {
            a7.b = d2.doubleValue();
        }
        Long l = c1326v7.h;
        if (l != null) {
            a7.h = l.longValue();
        }
        Integer num = c1326v7.f;
        if (num != null) {
            a7.f = num.intValue();
        }
        Integer num2 = c1326v7.e;
        if (num2 != null) {
            a7.e = num2.intValue();
        }
        Integer num3 = c1326v7.g;
        if (num3 != null) {
            a7.g = num3.intValue();
        }
        Integer num4 = c1326v7.d;
        if (num4 != null) {
            a7.d = num4.intValue();
        }
        String str = c1326v7.i;
        if (str != null) {
            a7.i = str;
        }
        String str2 = c1326v7.j;
        if (str2 != null) {
            a7.j = str2;
        }
        return a7;
    }
}
