package yads;

import android.graphics.Typeface;
import android.util.DisplayMetrics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class y12 {
    public static dn5 a(w12 w12Var, DisplayMetrics displayMetrics, ef2 ef2Var, fs2 fs2Var) {
        Number numberValueOf;
        ac1 ac1Var;
        ac1 ac1Var2;
        int i;
        long jLongValue = ((Number) w12Var.b.a(fs2Var)).longValue();
        as2 as2Var = w12Var.a;
        Integer numValueOf = null;
        cf2 cf2VarA = ef2Var.a(as2Var != null ? (String) as2Var.a(fs2Var) : null);
        cf2VarA.getClass();
        int iOrdinal = ((g12) w12Var.c.a(fs2Var)).ordinal();
        if (iOrdinal == 0) {
            numberValueOf = Integer.valueOf(uq.a(Long.valueOf(jLongValue), displayMetrics));
        } else if (iOrdinal == 1) {
            numberValueOf = Integer.valueOf(uq.b(Long.valueOf(jLongValue), displayMetrics));
        } else {
            if (iOrdinal != 2) {
                defpackage.me0.e();
                return null;
            }
            numberValueOf = Long.valueOf(jLongValue);
        }
        float fFloatValue = numberValueOf.floatValue();
        float fDoubleValue = ((float) ((Number) w12Var.g.a(fs2Var)).doubleValue()) / jLongValue;
        as2 as2Var2 = w12Var.e;
        tf1 tf1Var = as2Var2 != null ? (tf1) as2Var2.a(fs2Var) : null;
        as2 as2Var3 = w12Var.f;
        if (as2Var3 != null) {
            long jLongValue2 = ((Number) as2Var3.a(fs2Var)).longValue();
            long j = jLongValue2 >> 31;
            if (j == 0 || j == -1) {
                i = (int) jLongValue2;
            } else {
                i = jLongValue2 > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            }
            numValueOf = Integer.valueOf(i);
        }
        Typeface typefaceA = gf2.a(tf1Var, numValueOf, cf2VarA);
        nv1 nv1Var = w12Var.h;
        float fA = 0.0f;
        float fA2 = (nv1Var == null || (ac1Var2 = nv1Var.a) == null) ? 0.0f : pq.a(ac1Var2, displayMetrics, fs2Var);
        nv1 nv1Var2 = w12Var.h;
        if (nv1Var2 != null && (ac1Var = nv1Var2.b) != null) {
            fA = pq.a(ac1Var, displayMetrics, fs2Var);
        }
        return new dn5(fFloatValue, fDoubleValue, typefaceA, fA2, fA, ((Number) w12Var.i.a(fs2Var)).intValue());
    }

    public static int a(long j, g12 g12Var, DisplayMetrics displayMetrics) {
        int iOrdinal = g12Var.ordinal();
        if (iOrdinal == 0) {
            return pq.a(Long.valueOf(j), displayMetrics);
        }
        if (iOrdinal == 1) {
            return pq.b(Long.valueOf(j), displayMetrics);
        }
        if (iOrdinal != 2) {
            defpackage.me0.e();
            return 0;
        }
        long j2 = j >> 31;
        if (j2 == 0 || j2 == -1) {
            return (int) j;
        }
        return j > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
    }
}
