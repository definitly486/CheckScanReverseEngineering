package defpackage;

import java.util.ArrayList;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.json.JsonDecodingException;

/* JADX INFO: loaded from: classes5.dex */
public final class n98 extends f0 implements kc4 {
    public final xb4 a;
    public final ml9 b;
    public final w98 c;
    public final jq7 d;
    public int e;
    public a f;
    public final fc4 g;
    public final sc4 h;

    public static final class a {
        public String a;
    }

    public static final /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[ml9.values().length];
            try {
                iArr[ml9.LIST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ml9.MAP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ml9.POLY_OBJ.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ml9.OBJ.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
        }
    }

    public n98(xb4 xb4Var, ml9 ml9Var, w98 w98Var, mp7 mp7Var, a aVar) {
        xb4Var.getClass();
        ml9Var.getClass();
        w98Var.getClass();
        mp7Var.getClass();
        this.a = xb4Var;
        this.b = ml9Var;
        this.c = w98Var;
        this.d = xb4Var.b;
        this.e = -1;
        this.f = aVar;
        fc4 fc4Var = xb4Var.a;
        this.g = fc4Var;
        this.h = fc4Var.b ? null : new sc4(mp7Var);
    }

    @Override // defpackage.kc4
    public final oc4 a() {
        return new fe4(this.a.a, this.c).a();
    }

    @Override // defpackage.kc4
    public final xb4 b() {
        return this.a;
    }

    @Override // defpackage.f0, defpackage.ud2
    public final du1 beginStructure(mp7 mp7Var) {
        mp7Var.getClass();
        xb4 xb4Var = this.a;
        ml9 ml9VarB = nl9.b(xb4Var, mp7Var);
        w98 w98Var = this.c;
        od4 od4Var = w98Var.c;
        int i = od4Var.d + 1;
        od4Var.d = i;
        if (i == od4Var.b.length) {
            od4Var.b();
        }
        od4Var.b[i] = mp7Var;
        w98Var.g(ml9VarB.begin);
        if (w98Var.p() == 4) {
            w98.l(w98Var, "Unexpected leading comma", 0, null, 6);
            throw null;
        }
        int i2 = b.a[ml9VarB.ordinal()];
        if (i2 == 1 || i2 == 2 || i2 == 3) {
            return new n98(this.a, ml9VarB, this.c, mp7Var, this.f);
        }
        if (this.b == ml9VarB && xb4Var.a.b) {
            return this;
        }
        return new n98(this.a, ml9VarB, this.c, mp7Var, this.f);
    }

    @Override // defpackage.f0, defpackage.ud2
    public final boolean decodeBoolean() {
        boolean z;
        boolean z2;
        w98 w98Var = this.c;
        int iS = w98Var.s();
        if (iS == w98Var.n().length()) {
            w98.l(w98Var, "EOF", 0, null, 6);
            throw null;
        }
        if (w98Var.n().charAt(iS) == '\"') {
            iS++;
            z = true;
        } else {
            z = false;
        }
        int iR = w98Var.r(iS);
        if (iR >= w98Var.n().length() || iR == -1) {
            w98.l(w98Var, "EOF", 0, null, 6);
            throw null;
        }
        int i = iR + 1;
        int iCharAt = w98Var.n().charAt(iR) | ' ';
        if (iCharAt == 102) {
            w98Var.c(i, "alse");
            z2 = false;
        } else {
            if (iCharAt != 116) {
                w98.l(w98Var, "Expected valid boolean literal prefix, but had '" + w98Var.j() + '\'', 0, null, 6);
                throw null;
            }
            w98Var.c(i, "rue");
            z2 = true;
        }
        if (!z) {
            return z2;
        }
        if (w98Var.b == w98Var.n().length()) {
            w98.l(w98Var, "EOF", 0, null, 6);
            throw null;
        }
        if (w98Var.n().charAt(w98Var.b) == '\"') {
            w98Var.b++;
            return z2;
        }
        w98.l(w98Var, "Expected closing quotation mark", 0, null, 6);
        throw null;
    }

    @Override // defpackage.f0, defpackage.ud2
    public final byte decodeByte() {
        w98 w98Var = this.c;
        long jH = w98Var.h();
        byte b2 = (byte) jH;
        if (jH == b2) {
            return b2;
        }
        w98.l(w98Var, rg.g("Failed to parse byte for input '", jH, '\''), 0, null, 6);
        throw null;
    }

    @Override // defpackage.f0, defpackage.ud2
    public final char decodeChar() {
        w98 w98Var = this.c;
        String strJ = w98Var.j();
        if (strJ.length() == 1) {
            return strJ.charAt(0);
        }
        w98.l(w98Var, lt0.d('\'', "Expected single char, but got '", strJ), 0, null, 6);
        throw null;
    }

    @Override // defpackage.f0, defpackage.ud2
    public final double decodeDouble() {
        w98 w98Var = this.c;
        String strJ = w98Var.j();
        try {
            double d = Double.parseDouble(strJ);
            fc4 fc4Var = this.a.a;
            if (Math.abs(d) <= Double.MAX_VALUE) {
                return d;
            }
            w98.l(w98Var, yc4.f(null, Double.valueOf(d)), 0, "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'", 2);
            throw null;
        } catch (IllegalArgumentException unused) {
            w98.l(w98Var, lt0.d('\'', "Failed to parse type 'double' for input '", strJ), 0, null, 6);
            throw null;
        }
    }

    @Override // defpackage.du1
    public final int decodeElementIndex(mp7 mp7Var) {
        int iA;
        boolean z;
        boolean z2;
        String strQ;
        mp7Var.getClass();
        int[] iArr = b.a;
        ml9 ml9Var = this.b;
        int i = iArr[ml9Var.ordinal()];
        char c = ':';
        boolean zT = false;
        int i2 = 0;
        zT = false;
        xb4 xb4Var = this.a;
        boolean z3 = true;
        int i3 = -1;
        w98 w98Var = this.c;
        if (i == 2) {
            int i4 = this.e;
            boolean z4 = i4 % 2 != 0;
            if (!z4) {
                w98Var.g(':');
            } else if (i4 != -1) {
                zT = w98Var.t();
            }
            if (w98Var.b()) {
                if (z4) {
                    int i5 = this.e;
                    int i6 = w98Var.b;
                    if (i5 == -1) {
                        if (zT) {
                            w98.l(w98Var, "Unexpected leading comma", i6, null, 4);
                            throw null;
                        }
                    } else if (!zT) {
                        w98.l(w98Var, "Expected comma after the key-value pair", i6, null, 4);
                        throw null;
                    }
                }
                i3 = this.e + 1;
                this.e = i3;
            } else {
                if (zT) {
                    fc4 fc4Var = xb4Var.a;
                    yc4.d(w98Var, "object");
                    throw null;
                }
                i3 = -1;
            }
        } else if (i == 4) {
            boolean zT2 = w98Var.t();
            while (true) {
                boolean zB = w98Var.b();
                sc4 sc4Var = this.h;
                if (zB) {
                    fc4 fc4Var2 = this.g;
                    fc4Var2.getClass();
                    String strD = w98Var.d();
                    w98Var.g(c);
                    iA = fd4.a(mp7Var, xb4Var, strD);
                    if (iA != -3) {
                        if (fc4Var2.d) {
                            boolean zI = mp7Var.i(iA);
                            mp7 mp7VarD = mp7Var.d(iA);
                            if (zI && !mp7VarD.b() && w98Var.u(z3)) {
                                z = z3;
                            } else {
                                z = z3;
                                if (aa4.e(mp7VarD.getKind(), sp7.b.a) && ((!mp7VarD.b() || !w98Var.u(false)) && (strQ = w98Var.q()) != null)) {
                                    int iA2 = fd4.a(mp7VarD, xb4Var, strQ);
                                    boolean z5 = (xb4Var.a.b || !mp7VarD.b()) ? false : z;
                                    if (iA2 == -3 && (zI || z5)) {
                                        w98Var.i();
                                    }
                                }
                            }
                            zT2 = w98Var.t();
                            z2 = false;
                        }
                        if (sc4Var != null) {
                            cw2 cw2Var = sc4Var.a;
                            if (iA < 64) {
                                cw2Var.c |= 1 << iA;
                            } else {
                                int i7 = (iA >>> 6) - 1;
                                long[] jArr = cw2Var.d;
                                jArr[i7] = jArr[i7] | (1 << (iA & 63));
                            }
                        }
                    } else {
                        z = z3;
                        zT2 = false;
                        z2 = z;
                    }
                    if (z2) {
                        if (!fd4.c(xb4Var, mp7Var)) {
                            a aVar = this.f;
                            if (aVar == null || !aa4.e(aVar.a, strD)) {
                                od4 od4Var = w98Var.c;
                                int i8 = od4Var.d;
                                int[] iArr2 = od4Var.c;
                                if (iArr2[i8] == -2) {
                                    iArr2[i8] = i3;
                                    i8--;
                                    od4Var.d = i8;
                                }
                                int i9 = i3;
                                if (i8 != i9) {
                                    od4Var.d = i8 + i9;
                                }
                                w98Var.k(ta8.N(6, w98Var.n().subSequence(0, w98Var.b).toString(), strD), lt0.d('\'', "Encountered an unknown key '", strD), "Use 'ignoreUnknownKeys = true' in 'Json {}' builder or '@JsonIgnoreUnknownKeys' annotation to ignore unknown keys.");
                                throw null;
                            }
                            aVar.a = null;
                        }
                        ArrayList arrayList = new ArrayList();
                        byte bP = w98Var.p();
                        if (bP == 8 || bP == 6) {
                            while (true) {
                                byte bP2 = w98Var.p();
                                if (bP2 == z) {
                                    w98Var.d();
                                } else {
                                    if (bP2 == 8 || bP2 == 6) {
                                        arrayList.add(Byte.valueOf(bP2));
                                    } else if (bP2 == 9) {
                                        if (((Number) qn1.b0(arrayList)).byteValue() != 8) {
                                            w98.l(w98Var, "found ] instead of }", 0, null, 6);
                                            throw null;
                                        }
                                        nn1.E(arrayList);
                                    } else if (bP2 == 7) {
                                        if (((Number) qn1.b0(arrayList)).byteValue() != 6) {
                                            w98.l(w98Var, "found } instead of ]", 0, null, 6);
                                            throw null;
                                        }
                                        nn1.E(arrayList);
                                    } else if (bP2 == 10) {
                                        w98.l(w98Var, "Unexpected end of input due to malformed JSON during ignoring unknown keys", 0, null, 6);
                                        throw null;
                                    }
                                    w98Var.e();
                                    if (arrayList.size() == 0) {
                                        break;
                                    }
                                }
                                z = true;
                            }
                        } else {
                            w98Var.j();
                        }
                        zT2 = w98Var.t();
                    }
                    c = ':';
                    z3 = true;
                    i3 = -1;
                } else if (!zT2) {
                    if (sc4Var == null) {
                        i3 = -1;
                        break;
                    }
                    cw2 cw2Var2 = sc4Var.a;
                    sc4.a aVar2 = cw2Var2.b;
                    mp7 mp7Var2 = cw2Var2.a;
                    int iE = mp7Var2.e();
                    while (true) {
                        long j = cw2Var2.c;
                        long j2 = -1;
                        if (j == -1) {
                            if (iE > 64) {
                                long[] jArr2 = cw2Var2.d;
                                int length = jArr2.length;
                                while (true) {
                                    if (i2 < length) {
                                        int i10 = i2 + 1;
                                        int i11 = i10 * 64;
                                        long j3 = jArr2[i2];
                                        while (true) {
                                            if (j3 != j2) {
                                                int iNumberOfTrailingZeros = Long.numberOfTrailingZeros(~j3);
                                                j3 |= 1 << iNumberOfTrailingZeros;
                                                iA = iNumberOfTrailingZeros + i11;
                                                if (((Boolean) aVar2.invoke(mp7Var2, Integer.valueOf(iA))).booleanValue()) {
                                                    jArr2[i2] = j3;
                                                } else {
                                                    j2 = -1;
                                                }
                                            } else {
                                                jArr2[i2] = j3;
                                                i2 = i10;
                                                j2 = -1;
                                            }
                                        }
                                    }
                                }
                            }
                            i3 = -1;
                            break;
                        }
                        int iNumberOfTrailingZeros2 = Long.numberOfTrailingZeros(~j);
                        cw2Var2.c |= 1 << iNumberOfTrailingZeros2;
                        if (((Boolean) aVar2.invoke(mp7Var2, Integer.valueOf(iNumberOfTrailingZeros2))).booleanValue()) {
                            i3 = iNumberOfTrailingZeros2;
                            break;
                        }
                    }
                } else {
                    fc4 fc4Var3 = xb4Var.a;
                    yc4.d(w98Var, "object");
                    throw null;
                }
                i3 = iA;
                break;
            }
        } else {
            boolean zT3 = w98Var.t();
            if (w98Var.b()) {
                int i12 = this.e;
                if (i12 != -1 && !zT3) {
                    w98.l(w98Var, "Expected end of the array or comma", 0, null, 6);
                    throw null;
                }
                i3 = i12 + 1;
                this.e = i3;
            } else if (zT3) {
                fc4 fc4Var4 = xb4Var.a;
                yc4.d(w98Var, "array");
                throw null;
            }
        }
        if (ml9Var != ml9.MAP) {
            od4 od4Var2 = w98Var.c;
            od4Var2.c[od4Var2.d] = i3;
        }
        return i3;
    }

    @Override // defpackage.f0, defpackage.ud2
    public final int decodeEnum(mp7 mp7Var) {
        mp7Var.getClass();
        return fd4.b(mp7Var, this.a, decodeString(), " at path ".concat(this.c.c.a()));
    }

    @Override // defpackage.f0, defpackage.ud2
    public final float decodeFloat() {
        w98 w98Var = this.c;
        String strJ = w98Var.j();
        try {
            float f = Float.parseFloat(strJ);
            fc4 fc4Var = this.a.a;
            if (Math.abs(f) <= Float.MAX_VALUE) {
                return f;
            }
            w98.l(w98Var, yc4.f(null, Float.valueOf(f)), 0, "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'", 2);
            throw null;
        } catch (IllegalArgumentException unused) {
            w98.l(w98Var, lt0.d('\'', "Failed to parse type 'float' for input '", strJ), 0, null, 6);
            throw null;
        }
    }

    @Override // defpackage.f0, defpackage.ud2
    public final ud2 decodeInline(mp7 mp7Var) {
        mp7Var.getClass();
        return p98.a(mp7Var) ? new lc4(this.c, this.a) : super.decodeInline(mp7Var);
    }

    @Override // defpackage.f0, defpackage.ud2
    public final int decodeInt() {
        w98 w98Var = this.c;
        long jH = w98Var.h();
        int i = (int) jH;
        if (jH == i) {
            return i;
        }
        w98.l(w98Var, rg.g("Failed to parse int for input '", jH, '\''), 0, null, 6);
        throw null;
    }

    @Override // defpackage.f0, defpackage.ud2
    public final long decodeLong() {
        return this.c.h();
    }

    @Override // defpackage.f0, defpackage.ud2
    public final boolean decodeNotNullMark() {
        sc4 sc4Var = this.h;
        return ((sc4Var != null ? sc4Var.b : false) || this.c.u(true)) ? false : true;
    }

    @Override // defpackage.f0, defpackage.ud2
    public final Void decodeNull() {
        return null;
    }

    @Override // defpackage.f0, defpackage.du1
    public final <T> T decodeSerializableElement(mp7 mp7Var, int i, xl2<? extends T> xl2Var, T t) {
        mp7Var.getClass();
        xl2Var.getClass();
        boolean z = this.b == ml9.MAP && (i & 1) == 0;
        w98 w98Var = this.c;
        if (z) {
            od4 od4Var = w98Var.c;
            int[] iArr = od4Var.c;
            int i2 = od4Var.d;
            if (iArr[i2] == -2) {
                od4Var.b[i2] = od4.b.a;
            }
        }
        T t2 = (T) super.decodeSerializableElement(mp7Var, i, xl2Var, t);
        if (z) {
            od4 od4Var2 = w98Var.c;
            int[] iArr2 = od4Var2.c;
            int i3 = od4Var2.d;
            if (iArr2[i3] != -2) {
                int i4 = i3 + 1;
                od4Var2.d = i4;
                if (i4 == od4Var2.b.length) {
                    od4Var2.b();
                }
            }
            Object[] objArr = od4Var2.b;
            int i5 = od4Var2.d;
            objArr[i5] = od4Var2.a.h ? t2 : od4.a.a;
            od4Var2.c[i5] = -2;
        }
        return t2;
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0156  */
    /* JADX WARN: Code duplicated, block: B:50:0x0157  */
    /* JADX WARN: Instruction removed from duplicated block: B:50:0x0157, please report this as an issue */
    @Override // defpackage.f0, defpackage.ud2
    public final <T> T decodeSerializableValue(xl2<? extends T> xl2Var) {
        String message;
        String strA;
        xb4 xb4Var = this.a;
        w98 w98Var = this.c;
        xl2Var.getClass();
        try {
            if (!(xl2Var instanceof k1)) {
                return xl2Var.deserialize(this);
            }
            fc4 fc4Var = xb4Var.a;
            String strA2 = ca6.a(xb4Var, ((k1) xl2Var).getDescriptor());
            this.g.getClass();
            String strO = w98Var.o(strA2);
            if (strO != null) {
                try {
                    xl2 xl2VarA = ea6.a((k1) xl2Var, this, strO);
                    a aVar = new a();
                    aVar.a = strA2;
                    this.f = aVar;
                    return (T) xl2VarA.deserialize(this);
                } catch (SerializationException e) {
                    String message2 = e.getMessage();
                    message2.getClass();
                    String strU = ta8.U(ta8.c0(message2, '\n'), ".");
                    String message3 = e.getMessage();
                    message3.getClass();
                    String strSubstring = "";
                    int iJ = ta8.J('\n', 0, 6, message3);
                    if (iJ != -1) {
                        strSubstring = message3.substring(iJ + 1, message3.length());
                    }
                    w98.l(w98Var, strU, 0, strSubstring, 2);
                    throw null;
                }
            }
            fc4 fc4Var2 = xb4Var.a;
            String strA3 = ca6.a(xb4Var, ((k1) xl2Var).getDescriptor());
            oc4 oc4VarA = a();
            String strH = ((k1) xl2Var).getDescriptor().h();
            if (!(oc4VarA instanceof jd4)) {
                throw new JsonDecodingException(yc4.c(-1, "Expected " + x07.a(jd4.class).f() + ", but had " + x07.a(oc4VarA.getClass()).f() + " as the serialized body of " + strH, w98Var.c.a(), null, xb4Var.a.h ? yc4.e(-1, oc4VarA.toString()).toString() : null));
            }
            jd4 jd4Var = (jd4) oc4VarA;
            oc4 oc4Var = (oc4) jd4Var.get(strA3);
            if (oc4Var != null) {
                pd4 pd4VarA = rc4.a(oc4Var);
                strA = pd4VarA instanceof gd4 ? null : pd4VarA.a();
            }
            try {
                xl2<? extends T> xl2VarA2 = ea6.a((k1) xl2Var, this, strA);
                xb4Var.getClass();
                strA3.getClass();
                return (T) new zd4(xb4Var, jd4Var, strA3, xl2VarA2.getDescriptor()).decodeSerializableValue(xl2VarA2);
            } catch (SerializationException e2) {
                String message4 = e2.getMessage();
                message4.getClass();
                throw new JsonDecodingException(yc4.c(-1, message4, null, null, xb4Var.a.h ? yc4.e(-1, jd4Var.toString()).toString() : null));
            }
            message = e.getMessage();
            message.getClass();
            if (ta8.D(message, "at path", false)) {
                throw e;
            }
            throw new MissingFieldException(e.getMessage() + " at path: " + w98Var.c.a(), e, e.b, e.c);
        } catch (MissingFieldException e3) {
            message = e3.getMessage();
            message.getClass();
            if (ta8.D(message, "at path", false)) {
                throw e3;
            }
            throw new MissingFieldException(e3.getMessage() + " at path: " + w98Var.c.a(), e3, e3.b, e3.c);
        }
    }

    @Override // defpackage.f0, defpackage.ud2
    public final short decodeShort() {
        w98 w98Var = this.c;
        long jH = w98Var.h();
        short s = (short) jH;
        if (jH == s) {
            return s;
        }
        w98.l(w98Var, rg.g("Failed to parse short for input '", jH, '\''), 0, null, 6);
        throw null;
    }

    @Override // defpackage.f0, defpackage.ud2
    public final String decodeString() {
        this.g.getClass();
        return this.c.i();
    }

    @Override // defpackage.f0, defpackage.du1
    public final void endStructure(mp7 mp7Var) {
        mp7Var.getClass();
        int iE = mp7Var.e();
        xb4 xb4Var = this.a;
        if (iE == 0 && fd4.c(xb4Var, mp7Var)) {
            while (decodeElementIndex(mp7Var) != -1) {
            }
        }
        w98 w98Var = this.c;
        if (w98Var.t()) {
            fc4 fc4Var = xb4Var.a;
            yc4.d(w98Var, "");
            throw null;
        }
        w98Var.g(this.b.end);
        od4 od4Var = w98Var.c;
        int i = od4Var.d;
        int[] iArr = od4Var.c;
        if (iArr[i] == -2) {
            iArr[i] = -1;
            i--;
            od4Var.d = i;
        }
        if (i != -1) {
            od4Var.d = i - 1;
        }
    }

    @Override // defpackage.du1
    public final jq7 getSerializersModule() {
        return this.d;
    }
}
