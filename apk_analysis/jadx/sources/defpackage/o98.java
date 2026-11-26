package defpackage;

import kotlinx.serialization.json.JsonEncodingException;

/* JADX INFO: loaded from: classes5.dex */
public final class o98 extends h0 implements wc4 {
    public final au1 a;
    public final xb4 b;
    public final ml9 c;
    public final wc4[] d;
    public final jq7 e;
    public final fc4 f;
    public boolean g;
    public String h;
    public String i;

    public static final /* synthetic */ class a {
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
            a = iArr;
        }
    }

    public o98(au1 au1Var, xb4 xb4Var, ml9 ml9Var, wc4[] wc4VarArr) {
        au1Var.getClass();
        xb4Var.getClass();
        ml9Var.getClass();
        this.a = au1Var;
        this.b = xb4Var;
        this.c = ml9Var;
        this.d = wc4VarArr;
        this.e = xb4Var.b;
        this.f = xb4Var.a;
        int iOrdinal = ml9Var.ordinal();
        if (wc4VarArr != null) {
            wc4 wc4Var = wc4VarArr[iOrdinal];
            if (wc4Var == null && wc4Var == this) {
                return;
            }
            wc4VarArr[iOrdinal] = this;
        }
    }

    @Override // defpackage.h0, defpackage.ux2
    public final gu1 beginStructure(mp7 mp7Var) {
        wc4 wc4Var;
        mp7Var.getClass();
        xb4 xb4Var = this.b;
        ml9 ml9VarB = nl9.b(xb4Var, mp7Var);
        char c = ml9VarB.begin;
        au1 au1Var = this.a;
        if (c != 0) {
            au1Var.c(c);
            au1Var.b = true;
        }
        String str = this.h;
        if (str != null) {
            String strH = this.i;
            if (strH == null) {
                strH = mp7Var.h();
            }
            au1Var.a();
            au1Var.g(str);
            au1Var.c(':');
            encodeString(strH);
            this.h = null;
            this.i = null;
        }
        if (this.c == ml9VarB) {
            return this;
        }
        wc4[] wc4VarArr = this.d;
        return (wc4VarArr == null || (wc4Var = wc4VarArr[ml9VarB.ordinal()]) == null) ? new o98(au1Var, xb4Var, ml9VarB, wc4VarArr) : wc4Var;
    }

    @Override // defpackage.h0, defpackage.ux2
    public final void encodeBoolean(boolean z) {
        if (this.g) {
            encodeString(String.valueOf(z));
        } else {
            this.a.a.c(String.valueOf(z));
        }
    }

    @Override // defpackage.h0, defpackage.ux2
    public final void encodeByte(byte b) {
        if (this.g) {
            encodeString(String.valueOf((int) b));
        } else {
            this.a.b(b);
        }
    }

    @Override // defpackage.h0, defpackage.ux2
    public final void encodeChar(char c) {
        encodeString(String.valueOf(c));
    }

    @Override // defpackage.h0, defpackage.ux2
    public final void encodeDouble(double d) {
        if (this.g) {
            encodeString(String.valueOf(d));
        } else {
            this.a.a.c(String.valueOf(d));
        }
        this.f.getClass();
        if (Math.abs(d) > Double.MAX_VALUE) {
            throw new JsonEncodingException(yc4.f(null, Double.valueOf(d)), "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'");
        }
    }

    @Override // defpackage.h0
    public final boolean encodeElement(mp7 mp7Var, int i) {
        mp7Var.getClass();
        int i2 = a.a[this.c.ordinal()];
        au1 au1Var = this.a;
        if (i2 == 1) {
            if (!au1Var.b) {
                au1Var.c(',');
            }
            au1Var.a();
            return true;
        }
        boolean z = false;
        if (i2 == 2) {
            if (au1Var.b) {
                this.g = true;
                au1Var.a();
                return true;
            }
            if (i % 2 == 0) {
                au1Var.c(',');
                au1Var.a();
                z = true;
            } else {
                au1Var.c(':');
                au1Var.h();
            }
            this.g = z;
            return true;
        }
        if (i2 == 3) {
            if (i == 0) {
                this.g = true;
            }
            if (i == 1) {
                au1Var.c(',');
                au1Var.h();
                this.g = false;
            }
            return true;
        }
        if (!au1Var.b) {
            au1Var.c(',');
        }
        au1Var.a();
        xb4 xb4Var = this.b;
        xb4Var.getClass();
        fd4.d(xb4Var, mp7Var);
        encodeString(mp7Var.f(i));
        au1Var.c(':');
        au1Var.h();
        return true;
    }

    @Override // defpackage.h0, defpackage.ux2
    public final void encodeEnum(mp7 mp7Var, int i) {
        mp7Var.getClass();
        encodeString(mp7Var.f(i));
    }

    @Override // defpackage.h0, defpackage.ux2
    public final void encodeFloat(float f) {
        if (this.g) {
            encodeString(String.valueOf(f));
        } else {
            this.a.a.c(String.valueOf(f));
        }
        this.f.getClass();
        if (Math.abs(f) > Float.MAX_VALUE) {
            throw new JsonEncodingException(yc4.f(null, Float.valueOf(f)), "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'");
        }
    }

    @Override // defpackage.h0, defpackage.ux2
    public final ux2 encodeInline(mp7 mp7Var) {
        mp7Var.getClass();
        boolean zA = p98.a(mp7Var);
        ml9 ml9Var = this.c;
        xb4 xb4Var = this.b;
        au1 bu1Var = this.a;
        if (zA) {
            if (!(bu1Var instanceof cu1)) {
                bu1Var = new cu1(bu1Var.a, this.g);
            }
            return new o98(bu1Var, xb4Var, ml9Var, null);
        }
        if (mp7Var.isInline() && mp7Var.equals(rc4.a)) {
            if (!(bu1Var instanceof bu1)) {
                bu1Var = new bu1(bu1Var.a, this.g);
            }
            return new o98(bu1Var, xb4Var, ml9Var, null);
        }
        if (this.h == null) {
            return super.encodeInline(mp7Var);
        }
        this.i = mp7Var.h();
        return this;
    }

    @Override // defpackage.h0, defpackage.ux2
    public final void encodeInt(int i) {
        if (this.g) {
            encodeString(String.valueOf(i));
        } else {
            this.a.d(i);
        }
    }

    @Override // defpackage.h0, defpackage.ux2
    public final void encodeLong(long j) {
        if (this.g) {
            encodeString(String.valueOf(j));
        } else {
            this.a.e(j);
        }
    }

    @Override // defpackage.h0, defpackage.ux2
    public final void encodeNull() {
        au1 au1Var = this.a;
        au1Var.getClass();
        au1Var.a.c("null");
    }

    @Override // defpackage.h0, defpackage.gu1
    public final <T> void encodeNullableSerializableElement(mp7 mp7Var, int i, xp7<? super T> xp7Var, T t) {
        mp7Var.getClass();
        xp7Var.getClass();
        if (t != null || this.f.b) {
            super.encodeNullableSerializableElement(mp7Var, i, xp7Var, t);
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003b  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.h0, defpackage.ux2
    public final <T> void encodeSerializableValue(xp7<? super T> xp7Var, T t) {
        String strA;
        xp7<? super T> xp7VarB;
        xp7Var.getClass();
        xb4 xb4Var = this.b;
        boolean z = xp7Var instanceof k1;
        yk1 yk1Var = xb4Var.a.g;
        if (!z) {
            int i = ca6.a.a[yk1Var.ordinal()];
            if (i != 1 && i != 2) {
                if (i != 3) {
                    me0.e();
                    return;
                } else {
                    sp7 kind = xp7Var.getDescriptor().getKind();
                    strA = (aa4.e(kind, eb8.a.a) || aa4.e(kind, eb8.d.a)) ? ca6.a(xb4Var, xp7Var.getDescriptor()) : null;
                }
            }
        } else if (yk1Var != yk1.NONE) {
        }
        if (z) {
            k1 k1Var = (k1) xp7Var;
            if (t == 0) {
                h8.f(k1Var.getDescriptor(), "Value for serializer ", " should always be non-null. Please report issue to the kotlinx.serialization tracker.");
                return;
            }
            xp7VarB = ea6.b(k1Var, this, t);
        } else {
            xp7VarB = xp7Var;
        }
        if (strA != null) {
            mp7 descriptor = xp7VarB.getDescriptor();
            descriptor.getClass();
            xb4Var.getClass();
            fd4.d(xb4Var, descriptor);
            if (m96.a(descriptor).contains(strA)) {
                String strH = xp7Var.getDescriptor().h();
                String strH2 = xp7VarB.getDescriptor().h();
                throw new JsonEncodingException(me0.d(ad2.d("Class '", strH2, "' cannot be serialized ", (xb4Var.a.g == yk1.ALL_JSON_OBJECTS && aa4.e(strH, strH2)) ? "in ALL_JSON_OBJECTS class discriminator mode" : lt0.d('\'', "as base class '", strH), " because it has property name that conflicts with JSON class discriminator '"), strA, "'."), "You can either change class discriminator in JsonConfiguration, or rename property with @SerialName annotation.");
            }
            sp7 kind2 = xp7VarB.getDescriptor().getKind();
            kind2.getClass();
            if (kind2 instanceof sp7.b) {
                ah.f("Enums cannot be serialized polymorphically with 'type' parameter. You can use 'JsonBuilder.useArrayPolymorphism' instead");
                return;
            }
            if (kind2 instanceof dg6) {
                ah.f("Primitives cannot be serialized polymorphically with 'type' parameter. You can use 'JsonBuilder.useArrayPolymorphism' instead");
                return;
            } else if (kind2 instanceof ba6) {
                ah.f("Actual serializer for polymorphic cannot be polymorphic itself");
                return;
            } else {
                String strH3 = xp7VarB.getDescriptor().h();
                this.h = strA;
                this.i = strH3;
            }
        }
        xp7VarB.serialize(this, t);
    }

    @Override // defpackage.h0, defpackage.ux2
    public final void encodeShort(short s) {
        if (this.g) {
            encodeString(String.valueOf((int) s));
        } else {
            this.a.f(s);
        }
    }

    @Override // defpackage.h0, defpackage.ux2
    public final void encodeString(String str) {
        str.getClass();
        this.a.g(str);
    }

    @Override // defpackage.h0, defpackage.gu1
    public final void endStructure(mp7 mp7Var) {
        mp7Var.getClass();
        ml9 ml9Var = this.c;
        if (ml9Var.end != 0) {
            au1 au1Var = this.a;
            au1Var.getClass();
            au1Var.b = false;
            au1Var.c(ml9Var.end);
        }
    }

    @Override // defpackage.ux2
    public final jq7 getSerializersModule() {
        return this.e;
    }

    @Override // defpackage.h0, defpackage.gu1
    public final boolean shouldEncodeElementDefault(mp7 mp7Var, int i) {
        mp7Var.getClass();
        this.f.getClass();
        return false;
    }
}
