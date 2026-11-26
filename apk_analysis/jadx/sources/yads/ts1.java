package yads;

import android.util.DisplayMetrics;

/* JADX INFO: loaded from: classes6.dex */
public final class ts1 {
    public final fs2 a;
    public final DisplayMetrics b;
    public final float c;
    public final float d;
    public final float e;
    public final float f;
    public final float g;
    public final float h;
    public final Integer i;
    public final Integer j;
    public final Integer k;
    public final Integer l;

    /* JADX WARN: Code duplicated, block: B:13:0x001b  */
    /* JADX WARN: Code duplicated, block: B:23:0x0033  */
    /* JADX WARN: Code duplicated, block: B:38:0x005d  */
    public ts1(yc1 yc1Var, fs2 fs2Var, et1 et1Var, DisplayMetrics displayMetrics, boolean z, rr1 rr1Var) {
        boolean z2;
        as2 as2Var;
        as2 as2Var2;
        float f;
        float f2;
        this.a = fs2Var;
        this.b = displayMetrics;
        if ((yc1Var != null ? yc1Var.e : null) != null) {
            z2 = true;
        } else {
            if ((yc1Var != null ? yc1Var.b : null) != null) {
                z2 = true;
            } else {
                z2 = false;
            }
        }
        if (z2) {
            if (oh6.b(et1Var)) {
                if (yc1Var != null) {
                    as2Var = yc1Var.b;
                } else {
                    as2Var = null;
                }
            } else if (yc1Var != null) {
                as2Var = yc1Var.e;
            } else {
                as2Var = null;
            }
        } else if (yc1Var != null) {
            as2Var = yc1Var.c;
        } else {
            as2Var = null;
        }
        float fA = a(as2Var);
        this.c = fA;
        float fA2 = a(yc1Var != null ? yc1Var.f : null);
        this.d = fA2;
        if (z2) {
            if (oh6.b(et1Var)) {
                if (yc1Var != null) {
                    as2Var2 = yc1Var.e;
                } else {
                    as2Var2 = null;
                }
            } else if (yc1Var != null) {
                as2Var2 = yc1Var.b;
            } else {
                as2Var2 = null;
            }
        } else if (yc1Var != null) {
            as2Var2 = yc1Var.d;
        } else {
            as2Var2 = null;
        }
        float fA3 = a(as2Var2);
        this.e = fA3;
        float fA4 = a(yc1Var != null ? yc1Var.a : null);
        this.f = fA4;
        if (z) {
            f = oh6.b(et1Var) ? fA3 : fA;
        } else {
            f = fA2;
        }
        this.g = f;
        if (z) {
            f2 = oh6.b(et1Var) ? fA : fA3;
        } else {
            f2 = fA4;
        }
        this.h = f2;
        this.i = (!z || (rr1Var == rr1.START && !oh6.b(et1Var)) || (rr1Var == rr1.END && oh6.b(et1Var))) ? Integer.valueOf(defpackage.w65.b(fA)) : null;
        this.j = (z || rr1Var == rr1.START) ? Integer.valueOf(defpackage.w65.b(fA2)) : null;
        this.k = (!z || (rr1Var == rr1.START && oh6.b(et1Var)) || (rr1Var == rr1.END && !oh6.b(et1Var))) ? Integer.valueOf(defpackage.w65.b(fA3)) : null;
        this.l = (z || rr1Var == rr1.END) ? Integer.valueOf(defpackage.w65.b(fA4)) : null;
    }

    public final float a(as2 as2Var) {
        if (as2Var != null) {
            return pq.a((Number) Long.valueOf(((Number) as2Var.a(this.a)).longValue()), this.b);
        }
        return 0.0f;
    }
}
