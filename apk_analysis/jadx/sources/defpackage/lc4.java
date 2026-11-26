package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class lc4 extends f0 {
    public final w98 a;
    public final jq7 b;

    public lc4(w98 w98Var, xb4 xb4Var) {
        w98Var.getClass();
        xb4Var.getClass();
        this.a = w98Var;
        this.b = xb4Var.b;
    }

    @Override // defpackage.f0, defpackage.ud2
    public final byte decodeByte() {
        f49 f49Var;
        w98 w98Var = this.a;
        String strJ = w98Var.j();
        try {
            strJ.getClass();
            k49 k49VarC = tm1.c(strJ);
            if (k49VarC != null) {
                int i = k49VarC.b;
                f49Var = Integer.compareUnsigned(i, 255) > 0 ? null : new f49((byte) i);
            }
            if (f49Var != null) {
                return f49Var.b;
            }
            qa8.l(strJ);
            throw null;
        } catch (IllegalArgumentException unused) {
            w98.l(w98Var, lt0.d('\'', "Failed to parse type 'UByte' for input '", strJ), 0, null, 6);
            throw null;
        }
    }

    @Override // defpackage.du1
    public final int decodeElementIndex(mp7 mp7Var) {
        mp7Var.getClass();
        throw new IllegalStateException("unsupported");
    }

    @Override // defpackage.f0, defpackage.ud2
    public final int decodeInt() {
        w98 w98Var = this.a;
        String strJ = w98Var.j();
        try {
            strJ.getClass();
            k49 k49VarC = tm1.c(strJ);
            if (k49VarC != null) {
                return k49VarC.b;
            }
            qa8.l(strJ);
            throw null;
        } catch (IllegalArgumentException unused) {
            w98.l(w98Var, lt0.d('\'', "Failed to parse type 'UInt' for input '", strJ), 0, null, 6);
            throw null;
        }
    }

    @Override // defpackage.f0, defpackage.ud2
    public final long decodeLong() {
        w98 w98Var = this.a;
        String strJ = w98Var.j();
        try {
            strJ.getClass();
            p49 p49VarD = tm1.d(strJ);
            if (p49VarD != null) {
                return p49VarD.b;
            }
            qa8.l(strJ);
            throw null;
        } catch (IllegalArgumentException unused) {
            w98.l(w98Var, lt0.d('\'', "Failed to parse type 'ULong' for input '", strJ), 0, null, 6);
            throw null;
        }
    }

    @Override // defpackage.f0, defpackage.ud2
    public final short decodeShort() {
        v49 v49Var;
        w98 w98Var = this.a;
        String strJ = w98Var.j();
        try {
            strJ.getClass();
            k49 k49VarC = tm1.c(strJ);
            if (k49VarC != null) {
                int i = k49VarC.b;
                v49Var = Integer.compareUnsigned(i, 65535) > 0 ? null : new v49((short) i);
            }
            if (v49Var != null) {
                return v49Var.b;
            }
            qa8.l(strJ);
            throw null;
        } catch (IllegalArgumentException unused) {
            w98.l(w98Var, lt0.d('\'', "Failed to parse type 'UShort' for input '", strJ), 0, null, 6);
            throw null;
        }
    }

    @Override // defpackage.du1
    public final jq7 getSerializersModule() {
        return this.b;
    }
}
