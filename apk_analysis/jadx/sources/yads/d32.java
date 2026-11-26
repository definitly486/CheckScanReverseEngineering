package yads;

import defpackage.kx6;

/* JADX INFO: loaded from: classes6.dex */
public abstract class d32 {
    /* JADX WARN: Code duplicated, block: B:65:0x00e3  */
    public static final gr4 a(k11 k11Var, boolean z, fs2 fs2Var) {
        Float fValueOf;
        int iOrdinal = ((j11) k11Var.e.a(fs2Var)).ordinal();
        Float fValueOf2 = null;
        if (iOrdinal == 1) {
            if (z) {
                as2 as2Var = k11Var.h;
                if (as2Var != null) {
                    fValueOf = Float.valueOf(kx6.d((float) ((Number) as2Var.a(fs2Var)).doubleValue(), -1.0f, 1.0f));
                } else {
                    fValueOf = null;
                }
            } else {
                as2 as2Var2 = k11Var.b;
                if (as2Var2 != null) {
                    fValueOf = Float.valueOf(kx6.d((float) ((Number) as2Var2.a(fs2Var)).doubleValue(), -1.0f, 1.0f));
                } else {
                    fValueOf = null;
                }
            }
            if (z) {
                as2 as2Var3 = k11Var.b;
                Double d = as2Var3 != null ? (Double) as2Var3.a(fs2Var) : null;
                if (d != null) {
                    fValueOf2 = Float.valueOf(kx6.d((float) d.doubleValue(), -1.0f, 1.0f));
                }
            } else {
                as2 as2Var4 = k11Var.h;
                Double d2 = as2Var4 != null ? (Double) as2Var4.a(fs2Var) : null;
                if (d2 != null) {
                    fValueOf2 = Float.valueOf(kx6.d((float) d2.doubleValue(), -1.0f, 1.0f));
                }
            }
            return new q96(fValueOf != null ? fValueOf.floatValue() : -1.0f, fValueOf2 != null ? fValueOf2.floatValue() : 0.0f);
        }
        if (iOrdinal == 2) {
            if (z) {
                as2 as2Var5 = k11Var.h;
                Double d3 = as2Var5 != null ? (Double) as2Var5.a(fs2Var) : null;
                if (d3 != null) {
                    float fDoubleValue = (float) d3.doubleValue();
                    fValueOf2 = Float.valueOf(fDoubleValue >= 0.0f ? fDoubleValue : 0.0f);
                }
            } else {
                as2 as2Var6 = k11Var.b;
                Double d4 = as2Var6 != null ? (Double) as2Var6.a(fs2Var) : null;
                if (d4 != null) {
                    float fDoubleValue2 = (float) d4.doubleValue();
                    fValueOf2 = Float.valueOf(fDoubleValue2 >= 0.0f ? fDoubleValue2 : 0.0f);
                }
            }
            return new oc5(fValueOf2 != null ? fValueOf2.floatValue() : 1.0f);
        }
        if (iOrdinal == 5) {
            return null;
        }
        if (z) {
            as2 as2Var7 = k11Var.h;
            Double d5 = as2Var7 != null ? (Double) as2Var7.a(fs2Var) : null;
            if (d5 != null) {
                fValueOf2 = Float.valueOf(kx6.d((float) d5.doubleValue(), 0.0f, 1.0f));
            }
        } else {
            as2 as2Var8 = k11Var.b;
            Double d6 = as2Var8 != null ? (Double) as2Var8.a(fs2Var) : null;
            if (d6 != null) {
                fValueOf2 = Float.valueOf(kx6.d((float) d6.doubleValue(), 0.0f, 1.0f));
            }
        }
        it2 it2Var = new it2(fValueOf2 != null ? fValueOf2.floatValue() : 1.0f);
        it2Var.setMode(z ? 1 : 2);
        return it2Var;
    }
}
