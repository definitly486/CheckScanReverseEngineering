package io.appmetrica.analytics.impl;

import defpackage.aa4;
import defpackage.jh2;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Arrays;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.o7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1146o7 implements ProtobufConverter {
    public final C1333ve a;
    public final C1351w7 b;

    public /* synthetic */ C1146o7(C1333ve c1333ve, C1351w7 c1351w7, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new C1333ve() : c1333ve, (i & 2) != 0 ? new C1351w7(null, 1, null) : c1351w7);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1198q7 toModel(C1426z7 c1426z7) {
        EnumC1403y9 enumC1403y9;
        C1426z7 c1426z8 = new C1426z7();
        int i = c1426z7.a;
        Integer numValueOf = i != c1426z8.a ? Integer.valueOf(i) : null;
        String str = c1426z7.b;
        String str2 = !aa4.e(str, c1426z8.b) ? str : null;
        String str3 = c1426z7.c;
        String str4 = !aa4.e(str3, c1426z8.c) ? str3 : null;
        long j = c1426z7.d;
        Long lValueOf = j != c1426z8.d ? Long.valueOf(j) : null;
        C1326v7 model = this.b.toModel(c1426z7.e);
        String str5 = c1426z7.f;
        String str6 = !aa4.e(str5, c1426z8.f) ? str5 : null;
        String str7 = c1426z7.g;
        String str8 = !aa4.e(str7, c1426z8.g) ? str7 : null;
        long j2 = c1426z7.h;
        Long lValueOf2 = Long.valueOf(j2);
        if (j2 == c1426z8.h) {
            lValueOf2 = null;
        }
        int i2 = c1426z7.i;
        Integer numValueOf2 = i2 != c1426z8.i ? Integer.valueOf(i2) : null;
        int i3 = c1426z7.j;
        Integer numValueOf3 = i3 != c1426z8.j ? Integer.valueOf(i3) : null;
        String str9 = c1426z7.k;
        String str10 = !aa4.e(str9, c1426z8.k) ? str9 : null;
        int i4 = c1426z7.l;
        Integer numValueOf4 = Integer.valueOf(i4);
        if (i4 == c1426z8.l) {
            numValueOf4 = null;
        }
        U8 u8A = numValueOf4 != null ? U8.a(Integer.valueOf(numValueOf4.intValue())) : null;
        String str11 = c1426z7.m;
        String str12 = !aa4.e(str11, c1426z8.m) ? str11 : null;
        int i5 = c1426z7.n;
        Integer numValueOf5 = Integer.valueOf(i5);
        if (i5 == c1426z8.n) {
            numValueOf5 = null;
        }
        EnumC1252sa enumC1252saA = numValueOf5 != null ? EnumC1252sa.a(Integer.valueOf(numValueOf5.intValue())) : null;
        int i6 = c1426z7.o;
        Integer numValueOf6 = Integer.valueOf(i6);
        if (i6 == c1426z8.o) {
            numValueOf6 = null;
        }
        if (numValueOf6 != null) {
            int iIntValue = numValueOf6.intValue();
            EnumC1403y9[] enumC1403y9ArrValues = EnumC1403y9.values();
            int length = enumC1403y9ArrValues.length;
            int i7 = 0;
            while (true) {
                if (i7 >= length) {
                    enumC1403y9 = EnumC1403y9.NATIVE;
                    break;
                }
                enumC1403y9 = enumC1403y9ArrValues[i7];
                EnumC1403y9[] enumC1403y9Arr = enumC1403y9ArrValues;
                if (enumC1403y9.a == iIntValue) {
                    break;
                }
                i7++;
                enumC1403y9ArrValues = enumC1403y9Arr;
            }
        } else {
            enumC1403y9 = null;
        }
        Boolean boolA = this.a.a(c1426z7.p);
        int i8 = c1426z7.q;
        Integer numValueOf7 = i8 != c1426z8.q ? Integer.valueOf(i8) : null;
        byte[] bArr = c1426z7.r;
        byte[] bArr2 = !Arrays.equals(bArr, c1426z8.r) ? bArr : null;
        int i9 = c1426z7.s;
        return new C1198q7(numValueOf, str2, str4, lValueOf, model, str6, str8, lValueOf2, numValueOf2, numValueOf3, str10, u8A, str12, enumC1252saA, enumC1403y9, boolA, numValueOf7, bArr2, i9 != c1426z8.s ? Integer.valueOf(i9) : null);
    }

    public C1146o7(C1333ve c1333ve, C1351w7 c1351w7) {
        this.a = c1333ve;
        this.b = c1351w7;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C1146o7() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1426z7 fromModel(C1198q7 c1198q7) {
        C1426z7 c1426z7 = new C1426z7();
        Integer num = c1198q7.a;
        if (num != null) {
            c1426z7.a = num.intValue();
        }
        String str = c1198q7.b;
        if (str != null) {
            c1426z7.b = StringUtils.correctIllFormedString(str);
        }
        String str2 = c1198q7.c;
        if (str2 != null) {
            c1426z7.c = StringUtils.correctIllFormedString(str2);
        }
        Long l = c1198q7.d;
        if (l != null) {
            c1426z7.d = l.longValue();
        }
        C1326v7 c1326v7 = c1198q7.e;
        if (c1326v7 != null) {
            c1426z7.e = this.b.fromModel(c1326v7);
        }
        String str3 = c1198q7.f;
        if (str3 != null) {
            c1426z7.f = str3;
        }
        String str4 = c1198q7.g;
        if (str4 != null) {
            c1426z7.g = str4;
        }
        Long l2 = c1198q7.h;
        if (l2 != null) {
            c1426z7.h = l2.longValue();
        }
        Integer num2 = c1198q7.i;
        if (num2 != null) {
            c1426z7.i = num2.intValue();
        }
        Integer num3 = c1198q7.j;
        if (num3 != null) {
            c1426z7.j = num3.intValue();
        }
        String str5 = c1198q7.k;
        if (str5 != null) {
            c1426z7.k = str5;
        }
        U8 u8 = c1198q7.l;
        if (u8 != null) {
            c1426z7.l = u8.a;
        }
        String str6 = c1198q7.m;
        if (str6 != null) {
            c1426z7.m = str6;
        }
        EnumC1252sa enumC1252sa = c1198q7.n;
        if (enumC1252sa != null) {
            c1426z7.n = enumC1252sa.a;
        }
        EnumC1403y9 enumC1403y9 = c1198q7.o;
        if (enumC1403y9 != null) {
            c1426z7.o = enumC1403y9.a;
        }
        Boolean bool = c1198q7.p;
        if (bool != null) {
            c1426z7.p = this.a.fromModel(bool).intValue();
        }
        Integer num4 = c1198q7.q;
        if (num4 != null) {
            c1426z7.q = num4.intValue();
        }
        byte[] bArr = c1198q7.r;
        if (bArr != null) {
            c1426z7.r = bArr;
        }
        Integer num5 = c1198q7.s;
        if (num5 != null) {
            c1426z7.s = num5.intValue();
        }
        return c1426z7;
    }
}
