package defpackage;

import androidx.core.app.FrameMetricsAggregator;

/* JADX INFO: loaded from: classes5.dex */
@up7
public final class di4 {
    public static final b Companion = new b();

    @bq7("previewBlock")
    private final jv4 a;

    @bq7("headerBlock")
    private final jv4 b;

    @bq7("benefitsBlock")
    private final ji0 c;

    @bq7("stepsBlock")
    private final x88 d;

    @bq7("warningBlock")
    private final pf9 e;

    @bq7("bonusesBlock")
    private final sn0 f;

    @bq7("buttonBlock")
    private final iv0 g;

    @bq7("legalBlock")
    private final so4 h;

    @bq7("activationBlock")
    private final t6 i;

    @ul2
    public static final class a implements dp3<di4> {
        public static final a a;
        private static final /* synthetic */ s96 descriptor;

        static {
            a aVar = new a();
            a = aVar;
            s96 s96Var = new s96("com.warefly.checkscan.shared.bank.data.network.responses.LandingCardResponse", aVar, 9);
            s96Var.j("previewBlock", false);
            s96Var.j("headerBlock", false);
            s96Var.j("benefitsBlock", false);
            s96Var.j("stepsBlock", false);
            s96Var.j("warningBlock", false);
            s96Var.j("bonusBlock", false);
            s96Var.j("buttonBlock", false);
            s96Var.j("legalBlock", false);
            s96Var.j("activationBlockResponse", false);
            descriptor = s96Var;
        }

        @Override // defpackage.dp3
        public final df4<?>[] childSerializers() {
            jv4.a aVar = jv4.a.a;
            return new df4[]{aVar, ev0.a(aVar), ev0.a(ji0.a.a), ev0.a(x88.a.a), ev0.a(pf9.a.a), ev0.a(sn0.a.a), ev0.a(iv0.a.a), ev0.a(so4.a.a), ev0.a(t6.a.a)};
        }

        @Override // defpackage.xl2
        public final Object deserialize(ud2 ud2Var) {
            jv4 jv4Var;
            ji0 ji0Var;
            jv4 jv4Var2;
            int i;
            pf9 pf9Var;
            t6 t6Var;
            x88 x88Var;
            so4 so4Var;
            iv0 iv0Var;
            sn0 sn0Var;
            ud2Var.getClass();
            s96 s96Var = descriptor;
            du1 du1VarBeginStructure = ud2Var.beginStructure(s96Var);
            int i2 = 7;
            int i3 = 6;
            int i4 = 5;
            char c = 3;
            x88 x88Var2 = null;
            if (du1VarBeginStructure.decodeSequentially()) {
                jv4.a aVar = jv4.a.a;
                jv4 jv4Var3 = (jv4) du1VarBeginStructure.decodeSerializableElement(s96Var, 0, aVar, null);
                jv4Var = (jv4) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 1, aVar, null);
                ji0 ji0Var2 = (ji0) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 2, ji0.a.a, null);
                x88 x88Var3 = (x88) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 3, x88.a.a, null);
                pf9 pf9Var2 = (pf9) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 4, pf9.a.a, null);
                sn0 sn0Var2 = (sn0) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 5, sn0.a.a, null);
                iv0 iv0Var2 = (iv0) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 6, iv0.a.a, null);
                so4Var = (so4) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 7, so4.a.a, null);
                iv0Var = iv0Var2;
                sn0Var = sn0Var2;
                x88Var = x88Var3;
                t6Var = (t6) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 8, t6.a.a, null);
                pf9Var = pf9Var2;
                ji0Var = ji0Var2;
                i = 511;
                jv4Var2 = jv4Var3;
            } else {
                boolean z = true;
                int i5 = 0;
                jv4Var = null;
                pf9 pf9Var3 = null;
                t6 t6Var2 = null;
                so4 so4Var2 = null;
                iv0 iv0Var3 = null;
                sn0 sn0Var3 = null;
                ji0 ji0Var3 = null;
                jv4 jv4Var4 = null;
                while (z) {
                    int iDecodeElementIndex = du1VarBeginStructure.decodeElementIndex(s96Var);
                    switch (iDecodeElementIndex) {
                        case -1:
                            z = false;
                            i2 = 7;
                            i3 = 6;
                            i4 = 5;
                            break;
                        case 0:
                            jv4Var4 = (jv4) du1VarBeginStructure.decodeSerializableElement(s96Var, 0, jv4.a.a, jv4Var4);
                            i5 |= 1;
                            i2 = 7;
                            i3 = 6;
                            i4 = 5;
                            c = 3;
                            break;
                        case 1:
                            jv4Var = (jv4) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 1, jv4.a.a, jv4Var);
                            i5 |= 2;
                            i2 = 7;
                            i3 = 6;
                            c = 3;
                            break;
                        case 2:
                            i5 |= 4;
                            ji0Var3 = (ji0) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 2, ji0.a.a, ji0Var3);
                            i2 = 7;
                            i3 = 6;
                            c = 3;
                            break;
                        case 3:
                            x88Var2 = (x88) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 3, x88.a.a, x88Var2);
                            i5 |= 8;
                            c = 3;
                            i2 = 7;
                            break;
                        case 4:
                            pf9Var3 = (pf9) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 4, pf9.a.a, pf9Var3);
                            i5 |= 16;
                            c = 3;
                            break;
                        case 5:
                            sn0Var3 = (sn0) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, i4, sn0.a.a, sn0Var3);
                            i5 |= 32;
                            c = 3;
                            break;
                        case 6:
                            iv0Var3 = (iv0) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, i3, iv0.a.a, iv0Var3);
                            i5 |= 64;
                            c = 3;
                            break;
                        case 7:
                            so4Var2 = (so4) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, i2, so4.a.a, so4Var2);
                            i5 |= 128;
                            c = 3;
                            break;
                        case 8:
                            t6Var2 = (t6) du1VarBeginStructure.decodeNullableSerializableElement(s96Var, 8, t6.a.a, t6Var2);
                            i5 |= 256;
                            c = 3;
                            break;
                        default:
                            pg.h(iDecodeElementIndex);
                            return null;
                    }
                }
                ji0Var = ji0Var3;
                jv4Var2 = jv4Var4;
                i = i5;
                pf9Var = pf9Var3;
                t6Var = t6Var2;
                x88Var = x88Var2;
                so4Var = so4Var2;
                iv0Var = iv0Var3;
                sn0Var = sn0Var3;
            }
            jv4 jv4Var5 = jv4Var;
            du1VarBeginStructure.endStructure(s96Var);
            return new di4(i, jv4Var2, jv4Var5, ji0Var, x88Var, pf9Var, sn0Var, iv0Var, so4Var, t6Var, null);
        }

        @Override // defpackage.xp7, defpackage.xl2
        public final mp7 getDescriptor() {
            return descriptor;
        }

        @Override // defpackage.xp7
        public final void serialize(ux2 ux2Var, Object obj) {
            di4 di4Var = (di4) obj;
            di4Var.getClass();
            s96 s96Var = descriptor;
            gu1 gu1VarBeginStructure = ux2Var.beginStructure(s96Var);
            di4.h(di4Var, gu1VarBeginStructure, s96Var);
            gu1VarBeginStructure.endStructure(s96Var);
        }

        @Override // defpackage.dp3
        public final df4<?>[] typeParametersSerializers() {
            return u96.c;
        }
    }

    public static final class b {
        public final df4<di4> serializer() {
            return a.a;
        }
    }

    @ul2
    public /* synthetic */ di4(int i, jv4 jv4Var, jv4 jv4Var2, ji0 ji0Var, x88 x88Var, pf9 pf9Var, sn0 sn0Var, iv0 iv0Var, so4 so4Var, t6 t6Var, wp7 wp7Var) {
        if (511 != (i & FrameMetricsAggregator.EVERY_DURATION)) {
            r96.f(a.a.getDescriptor(), i, FrameMetricsAggregator.EVERY_DURATION);
            throw null;
        }
        this.a = jv4Var;
        this.b = jv4Var2;
        this.c = ji0Var;
        this.d = x88Var;
        this.e = pf9Var;
        this.f = sn0Var;
        this.g = iv0Var;
        this.h = so4Var;
        this.i = t6Var;
    }

    public static final /* synthetic */ void h(di4 di4Var, gu1 gu1Var, s96 s96Var) {
        jv4.a aVar = jv4.a.a;
        gu1Var.encodeSerializableElement(s96Var, 0, aVar, di4Var.a);
        gu1Var.encodeNullableSerializableElement(s96Var, 1, aVar, di4Var.b);
        gu1Var.encodeNullableSerializableElement(s96Var, 2, ji0.a.a, di4Var.c);
        gu1Var.encodeNullableSerializableElement(s96Var, 3, x88.a.a, di4Var.d);
        gu1Var.encodeNullableSerializableElement(s96Var, 4, pf9.a.a, di4Var.e);
        gu1Var.encodeNullableSerializableElement(s96Var, 5, sn0.a.a, di4Var.f);
        gu1Var.encodeNullableSerializableElement(s96Var, 6, iv0.a.a, di4Var.g);
        gu1Var.encodeNullableSerializableElement(s96Var, 7, so4.a.a, di4Var.h);
        gu1Var.encodeNullableSerializableElement(s96Var, 8, t6.a.a, di4Var.i);
    }

    public final ji0 a() {
        return this.c;
    }

    public final sn0 b() {
        return this.f;
    }

    public final iv0 c() {
        return this.g;
    }

    public final jv4 d() {
        return this.b;
    }

    public final so4 e() {
        return this.h;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof di4)) {
            return false;
        }
        di4 di4Var = (di4) obj;
        return aa4.e(this.a, di4Var.a) && aa4.e(this.b, di4Var.b) && aa4.e(this.c, di4Var.c) && aa4.e(this.d, di4Var.d) && aa4.e(this.e, di4Var.e) && aa4.e(this.f, di4Var.f) && aa4.e(this.g, di4Var.g) && aa4.e(this.h, di4Var.h) && aa4.e(this.i, di4Var.i);
    }

    public final x88 f() {
        return this.d;
    }

    public final pf9 g() {
        return this.e;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        jv4 jv4Var = this.b;
        int iHashCode2 = (iHashCode + (jv4Var == null ? 0 : jv4Var.hashCode())) * 31;
        ji0 ji0Var = this.c;
        int iHashCode3 = (iHashCode2 + (ji0Var == null ? 0 : ji0Var.hashCode())) * 31;
        x88 x88Var = this.d;
        int iHashCode4 = (iHashCode3 + (x88Var == null ? 0 : x88Var.hashCode())) * 31;
        pf9 pf9Var = this.e;
        int iHashCode5 = (iHashCode4 + (pf9Var == null ? 0 : pf9Var.hashCode())) * 31;
        sn0 sn0Var = this.f;
        int iHashCode6 = (iHashCode5 + (sn0Var == null ? 0 : sn0Var.hashCode())) * 31;
        iv0 iv0Var = this.g;
        int iHashCode7 = (iHashCode6 + (iv0Var == null ? 0 : iv0Var.hashCode())) * 31;
        so4 so4Var = this.h;
        int iHashCode8 = (iHashCode7 + (so4Var == null ? 0 : so4Var.hashCode())) * 31;
        t6 t6Var = this.i;
        return iHashCode8 + (t6Var != null ? t6Var.hashCode() : 0);
    }

    public final String toString() {
        return "LandingCardResponse(previewBlock=" + this.a + ", headerBlock=" + this.b + ", benefitsBlock=" + this.c + ", stepsBlock=" + this.d + ", warningBlock=" + this.e + ", bonusBlock=" + this.f + ", buttonBlock=" + this.g + ", legalBlock=" + this.h + ", activationBlockResponse=" + this.i + ")";
    }

    public di4(jv4 jv4Var, jv4 jv4Var2, ji0 ji0Var, x88 x88Var, pf9 pf9Var, sn0 sn0Var, iv0 iv0Var, so4 so4Var, t6 t6Var) {
        jv4Var.getClass();
        this.a = jv4Var;
        this.b = jv4Var2;
        this.c = ji0Var;
        this.d = x88Var;
        this.e = pf9Var;
        this.f = sn0Var;
        this.g = iv0Var;
        this.h = so4Var;
        this.i = t6Var;
    }
}
