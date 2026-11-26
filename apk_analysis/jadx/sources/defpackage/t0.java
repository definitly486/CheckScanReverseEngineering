package defpackage;

import androidx.collection.SieveCacheKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.tapjoy.TJAdUnitConstants;
import java.util.NoSuchElementException;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.json.JsonDecodingException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class t0 extends yh5 implements kc4 {
    public final xb4 c;
    public final String d;
    public final fc4 e;

    public t0(xb4 xb4Var, oc4 oc4Var, String str) {
        this.c = xb4Var;
        this.d = str;
        this.e = xb4Var.a;
    }

    @Override // defpackage.kc4
    public final oc4 a() {
        return s();
    }

    @Override // defpackage.kc4
    public final xb4 b() {
        return this.c;
    }

    @Override // defpackage.ud2
    public du1 beginStructure(mp7 mp7Var) {
        mp7Var.getClass();
        oc4 oc4VarS = s();
        sp7 kind = mp7Var.getKind();
        boolean zE = aa4.e(kind, eb8.b.a);
        xb4 xb4Var = this.c;
        if (zE || (kind instanceof ba6)) {
            String strH = mp7Var.h();
            if (oc4VarS instanceof zb4) {
                return new ae4(xb4Var, (zb4) oc4VarS);
            }
            throw new JsonDecodingException(yc4.c(-1, "Expected " + x07.a(zb4.class).f() + ", but had " + x07.a(oc4VarS.getClass()).f() + " as the serialized body of " + strH, q(), null, xb4Var.a.h ? yc4.e(-1, oc4VarS.toString()).toString() : null));
        }
        if (!aa4.e(kind, eb8.c.a)) {
            String strH2 = mp7Var.h();
            if (oc4VarS instanceof jd4) {
                return new zd4(xb4Var, (jd4) oc4VarS, this.d, 8);
            }
            throw new JsonDecodingException(yc4.c(-1, "Expected " + x07.a(jd4.class).f() + ", but had " + x07.a(oc4VarS.getClass()).f() + " as the serialized body of " + strH2, q(), null, xb4Var.a.h ? yc4.e(-1, oc4VarS.toString()).toString() : null));
        }
        mp7 mp7VarA = nl9.a(mp7Var.d(0), xb4Var.b);
        sp7 kind2 = mp7VarA.getKind();
        if (!(kind2 instanceof dg6) && !aa4.e(kind2, sp7.b.a)) {
            throw yc4.a(mp7VarA);
        }
        String strH3 = mp7Var.h();
        if (oc4VarS instanceof jd4) {
            return new be4(xb4Var, (jd4) oc4VarS);
        }
        throw new JsonDecodingException(yc4.c(-1, "Expected " + x07.a(jd4.class).f() + ", but had " + x07.a(oc4VarS.getClass()).f() + " as the serialized body of " + strH3, q(), null, xb4Var.a.h ? yc4.e(-1, oc4VarS.toString()).toString() : null));
    }

    @Override // defpackage.yh5
    public final boolean c(Object obj) {
        Boolean bool;
        String str = (String) obj;
        str.getClass();
        oc4 oc4VarR = r(str);
        if (!(oc4VarR instanceof pd4)) {
            throw new JsonDecodingException(yc4.c(-1, "Expected " + x07.a(pd4.class).f() + ", but had " + x07.a(oc4VarR.getClass()).f() + " as the serialized body of boolean", u(str), null, this.c.a.h ? yc4.e(-1, oc4VarR.toString()).toString() : null));
        }
        pd4 pd4Var = (pd4) oc4VarR;
        try {
            i54 i54Var = rc4.a;
            String strA = pd4Var.a();
            String[] strArr = aa8.a;
            strA.getClass();
            if (strA.equalsIgnoreCase(TJAdUnitConstants.String.TRUE)) {
                bool = Boolean.TRUE;
            } else {
                bool = strA.equalsIgnoreCase(TJAdUnitConstants.String.FALSE) ? Boolean.FALSE : null;
            }
            if (bool != null) {
                return bool.booleanValue();
            }
            v(pd4Var, TypedValues.Custom.S_BOOLEAN, str);
            throw null;
        } catch (IllegalArgumentException unused) {
            v(pd4Var, TypedValues.Custom.S_BOOLEAN, str);
            throw null;
        }
    }

    @Override // defpackage.yh5
    public final byte d(Object obj) {
        String str = (String) obj;
        str.getClass();
        oc4 oc4VarR = r(str);
        if (!(oc4VarR instanceof pd4)) {
            throw new JsonDecodingException(yc4.c(-1, "Expected " + x07.a(pd4.class).f() + ", but had " + x07.a(oc4VarR.getClass()).f() + " as the serialized body of byte", u(str), null, this.c.a.h ? yc4.e(-1, oc4VarR.toString()).toString() : null));
        }
        pd4 pd4Var = (pd4) oc4VarR;
        try {
            long jB = rc4.b(pd4Var);
            Byte bValueOf = (-128 > jB || jB > 127) ? null : Byte.valueOf((byte) jB);
            if (bValueOf != null) {
                return bValueOf.byteValue();
            }
            v(pd4Var, "byte", str);
            throw null;
        } catch (IllegalArgumentException unused) {
            v(pd4Var, "byte", str);
            throw null;
        }
    }

    @Override // defpackage.ud2
    public final ud2 decodeInline(mp7 mp7Var) {
        mp7Var.getClass();
        if (qn1.c0(this.a) != null) {
            return i(p(), mp7Var);
        }
        return new rd4(this.c, t(), this.d).decodeInline(mp7Var);
    }

    @Override // defpackage.ud2
    public boolean decodeNotNullMark() {
        return !(s() instanceof gd4);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0096  */
    @Override // defpackage.ud2
    public final <T> T decodeSerializableValue(xl2<? extends T> xl2Var) {
        String strA;
        xl2Var.getClass();
        if (!(xl2Var instanceof k1)) {
            return xl2Var.deserialize(this);
        }
        xb4 xb4Var = this.c;
        fc4 fc4Var = xb4Var.a;
        k1 k1Var = (k1) xl2Var;
        String strA2 = ca6.a(xb4Var, k1Var.getDescriptor());
        oc4 oc4VarS = s();
        String strH = k1Var.getDescriptor().h();
        if (!(oc4VarS instanceof jd4)) {
            throw new JsonDecodingException(yc4.c(-1, "Expected " + x07.a(jd4.class).f() + ", but had " + x07.a(oc4VarS.getClass()).f() + " as the serialized body of " + strH, q(), null, xb4Var.a.h ? yc4.e(-1, oc4VarS.toString()).toString() : null));
        }
        jd4 jd4Var = (jd4) oc4VarS;
        oc4 oc4Var = (oc4) jd4Var.get(strA2);
        if (oc4Var != null) {
            pd4 pd4VarA = rc4.a(oc4Var);
            if (pd4VarA instanceof gd4) {
                strA = null;
            } else {
                strA = pd4VarA.a();
            }
        } else {
            strA = null;
        }
        try {
            xl2<? extends T> xl2VarA = ea6.a((k1) xl2Var, this, strA);
            xb4Var.getClass();
            strA2.getClass();
            return (T) new zd4(xb4Var, jd4Var, strA2, xl2VarA.getDescriptor()).decodeSerializableValue(xl2VarA);
        } catch (SerializationException e) {
            String message = e.getMessage();
            message.getClass();
            throw new JsonDecodingException(yc4.c(-1, message, null, null, xb4Var.a.h ? yc4.e(-1, jd4Var.toString()).toString() : null));
        }
    }

    @Override // defpackage.yh5
    public final char e(Object obj) {
        String str = (String) obj;
        str.getClass();
        oc4 oc4VarR = r(str);
        if (!(oc4VarR instanceof pd4)) {
            throw new JsonDecodingException(yc4.c(-1, "Expected " + x07.a(pd4.class).f() + ", but had " + x07.a(oc4VarR.getClass()).f() + " as the serialized body of char", u(str), null, this.c.a.h ? yc4.e(-1, oc4VarR.toString()).toString() : null));
        }
        pd4 pd4Var = (pd4) oc4VarR;
        try {
            String strA = pd4Var.a();
            strA.getClass();
            int length = strA.length();
            if (length == 0) {
                throw new NoSuchElementException("Char sequence is empty.");
            }
            if (length == 1) {
                return strA.charAt(0);
            }
            throw new IllegalArgumentException("Char sequence has more than one element.");
        } catch (IllegalArgumentException unused) {
            v(pd4Var, "char", str);
            throw null;
        }
    }

    public void endStructure(mp7 mp7Var) {
        mp7Var.getClass();
    }

    @Override // defpackage.yh5
    public final double f(Object obj) {
        String str = (String) obj;
        str.getClass();
        oc4 oc4VarR = r(str);
        boolean z = oc4VarR instanceof pd4;
        xb4 xb4Var = this.c;
        if (!z) {
            throw new JsonDecodingException(yc4.c(-1, "Expected " + x07.a(pd4.class).f() + ", but had " + x07.a(oc4VarR.getClass()).f() + " as the serialized body of double", u(str), null, xb4Var.a.h ? yc4.e(-1, oc4VarR.toString()).toString() : null));
        }
        pd4 pd4Var = (pd4) oc4VarR;
        try {
            i54 i54Var = rc4.a;
            double d = Double.parseDouble(pd4Var.a());
            fc4 fc4Var = xb4Var.a;
            if (Math.abs(d) <= Double.MAX_VALUE) {
                return d;
            }
            throw new JsonDecodingException(yc4.c(-1, yc4.f(str, Double.valueOf(d)), null, "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'", xb4Var.a.h ? yc4.e(-1, s().toString()).toString() : null));
        } catch (IllegalArgumentException unused) {
            v(pd4Var, "double", str);
            throw null;
        }
    }

    @Override // defpackage.yh5
    public final int g(Object obj, mp7 mp7Var) {
        String str = (String) obj;
        str.getClass();
        mp7Var.getClass();
        oc4 oc4VarR = r(str);
        String strH = mp7Var.h();
        boolean z = oc4VarR instanceof pd4;
        xb4 xb4Var = this.c;
        if (z) {
            return fd4.b(mp7Var, xb4Var, ((pd4) oc4VarR).a(), "");
        }
        throw new JsonDecodingException(yc4.c(-1, "Expected " + x07.a(pd4.class).f() + ", but had " + x07.a(oc4VarR.getClass()).f() + " as the serialized body of " + strH, u(str), null, xb4Var.a.h ? yc4.e(-1, oc4VarR.toString()).toString() : null));
    }

    @Override // defpackage.du1
    public final jq7 getSerializersModule() {
        return this.c.b;
    }

    @Override // defpackage.yh5
    public final float h(Object obj) {
        String str = (String) obj;
        str.getClass();
        oc4 oc4VarR = r(str);
        boolean z = oc4VarR instanceof pd4;
        xb4 xb4Var = this.c;
        if (!z) {
            throw new JsonDecodingException(yc4.c(-1, "Expected " + x07.a(pd4.class).f() + ", but had " + x07.a(oc4VarR.getClass()).f() + " as the serialized body of float", u(str), null, xb4Var.a.h ? yc4.e(-1, oc4VarR.toString()).toString() : null));
        }
        pd4 pd4Var = (pd4) oc4VarR;
        try {
            i54 i54Var = rc4.a;
            float f = Float.parseFloat(pd4Var.a());
            fc4 fc4Var = xb4Var.a;
            if (Math.abs(f) <= Float.MAX_VALUE) {
                return f;
            }
            throw new JsonDecodingException(yc4.c(-1, yc4.f(str, Float.valueOf(f)), null, "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'", xb4Var.a.h ? yc4.e(-1, s().toString()).toString() : null));
        } catch (IllegalArgumentException unused) {
            v(pd4Var, TypedValues.Custom.S_FLOAT, str);
            throw null;
        }
    }

    @Override // defpackage.yh5
    public final ud2 i(Object obj, mp7 mp7Var) {
        String str = (String) obj;
        str.getClass();
        mp7Var.getClass();
        if (!p98.a(mp7Var)) {
            this.a.add(str);
            return this;
        }
        oc4 oc4VarR = r(str);
        String strH = mp7Var.h();
        boolean z = oc4VarR instanceof pd4;
        xb4 xb4Var = this.c;
        if (z) {
            return new lc4(yp2.b(xb4Var, ((pd4) oc4VarR).a()), xb4Var);
        }
        throw new JsonDecodingException(yc4.c(-1, "Expected " + x07.a(pd4.class).f() + ", but had " + x07.a(oc4VarR.getClass()).f() + " as the serialized body of " + strH, u(str), null, xb4Var.a.h ? yc4.e(-1, oc4VarR.toString()).toString() : null));
    }

    @Override // defpackage.yh5
    public final int j(Object obj) {
        String str = (String) obj;
        str.getClass();
        oc4 oc4VarR = r(str);
        if (!(oc4VarR instanceof pd4)) {
            throw new JsonDecodingException(yc4.c(-1, "Expected " + x07.a(pd4.class).f() + ", but had " + x07.a(oc4VarR.getClass()).f() + " as the serialized body of int", u(str), null, this.c.a.h ? yc4.e(-1, oc4VarR.toString()).toString() : null));
        }
        pd4 pd4Var = (pd4) oc4VarR;
        try {
            long jB = rc4.b(pd4Var);
            Integer numValueOf = (SieveCacheKt.NodeMetaAndPreviousMask > jB || jB > SieveCacheKt.NodeLinkMask) ? null : Integer.valueOf((int) jB);
            if (numValueOf != null) {
                return numValueOf.intValue();
            }
            v(pd4Var, "int", str);
            throw null;
        } catch (IllegalArgumentException unused) {
            v(pd4Var, "int", str);
            throw null;
        }
    }

    @Override // defpackage.yh5
    public final long k(Object obj) {
        String str = (String) obj;
        str.getClass();
        oc4 oc4VarR = r(str);
        if (oc4VarR instanceof pd4) {
            pd4 pd4Var = (pd4) oc4VarR;
            try {
                return rc4.b(pd4Var);
            } catch (IllegalArgumentException unused) {
                v(pd4Var, "long", str);
                throw null;
            }
        }
        throw new JsonDecodingException(yc4.c(-1, "Expected " + x07.a(pd4.class).f() + ", but had " + x07.a(oc4VarR.getClass()).f() + " as the serialized body of long", u(str), null, this.c.a.h ? yc4.e(-1, oc4VarR.toString()).toString() : null));
    }

    @Override // defpackage.yh5
    public final short l(Object obj) {
        String str = (String) obj;
        str.getClass();
        oc4 oc4VarR = r(str);
        if (!(oc4VarR instanceof pd4)) {
            throw new JsonDecodingException(yc4.c(-1, "Expected " + x07.a(pd4.class).f() + ", but had " + x07.a(oc4VarR.getClass()).f() + " as the serialized body of short", u(str), null, this.c.a.h ? yc4.e(-1, oc4VarR.toString()).toString() : null));
        }
        pd4 pd4Var = (pd4) oc4VarR;
        try {
            long jB = rc4.b(pd4Var);
            Short shValueOf = (-32768 > jB || jB > 32767) ? null : Short.valueOf((short) jB);
            if (shValueOf != null) {
                return shValueOf.shortValue();
            }
            v(pd4Var, "short", str);
            throw null;
        } catch (IllegalArgumentException unused) {
            v(pd4Var, "short", str);
            throw null;
        }
    }

    @Override // defpackage.yh5
    public final String m(Object obj) {
        String str = (String) obj;
        str.getClass();
        oc4 oc4VarR = r(str);
        boolean z = oc4VarR instanceof pd4;
        xb4 xb4Var = this.c;
        if (!z) {
            throw new JsonDecodingException(yc4.c(-1, "Expected " + x07.a(pd4.class).f() + ", but had " + x07.a(oc4VarR.getClass()).f() + " as the serialized body of string", u(str), null, xb4Var.a.h ? yc4.e(-1, oc4VarR.toString()).toString() : null));
        }
        pd4 pd4Var = (pd4) oc4VarR;
        if (!(pd4Var instanceof cd4)) {
            throw new JsonDecodingException(yc4.c(-1, me0.c("Expected string value for a non-null key '", str, "', got null literal instead"), u(str), "Use 'coerceInputValues = true' in 'Json {}' builder to coerce nulls if property has a default value.", xb4Var.a.h ? yc4.e(-1, s().toString()).toString() : null));
        }
        cd4 cd4Var = (cd4) pd4Var;
        if (cd4Var.b) {
            return cd4Var.c;
        }
        fc4 fc4Var = xb4Var.a;
        throw new JsonDecodingException(yc4.c(-1, me0.c("String literal for value of key '", str, "' should be quoted"), u(str), "Use 'isLenient = true' in 'Json {}' builder to accept non-compliant JSON.", xb4Var.a.h ? yc4.e(-1, s().toString()).toString() : null));
    }

    public abstract oc4 r(String str);

    public final oc4 s() {
        oc4 oc4VarR;
        String str = (String) qn1.c0(this.a);
        return (str == null || (oc4VarR = r(str)) == null) ? t() : oc4VarR;
    }

    public abstract oc4 t();

    public final String u(String str) {
        str.getClass();
        return q() + '.' + str;
    }

    public final void v(pd4 pd4Var, String str, String str2) {
        throw new JsonDecodingException(yc4.c(-1, "Failed to parse literal '" + pd4Var + "' as " + (ra8.C(str, "i", false) ? "an " : "a ").concat(str) + " value", u(str2), null, this.c.a.h ? yc4.e(-1, s().toString()).toString() : null));
    }
}
