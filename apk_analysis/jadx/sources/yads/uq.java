package yads;

import android.os.Build;
import android.util.DisplayMetrics;
import android.util.TypedValue;

/* JADX INFO: loaded from: classes6.dex */
public abstract /* synthetic */ class uq {
    public static final int a(af1 af1Var, DisplayMetrics displayMetrics, fs2 fs2Var) {
        int iOrdinal = ((g12) af1Var.a.a(fs2Var)).ordinal();
        if (iOrdinal == 0) {
            return pq.a((Long) af1Var.b.a(fs2Var), displayMetrics);
        }
        if (iOrdinal == 1) {
            return pq.b((Long) af1Var.b.a(fs2Var), displayMetrics);
        }
        if (iOrdinal != 2) {
            defpackage.me0.e();
            return 0;
        }
        long jLongValue = ((Number) af1Var.b.a(fs2Var)).longValue();
        long j = jLongValue >> 31;
        if (j == 0 || j == -1) {
            return (int) jLongValue;
        }
        return jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
    }

    public static final int b(Long l, DisplayMetrics displayMetrics) {
        Integer numValueOf;
        int i;
        if (l != null) {
            long jLongValue = l.longValue();
            long j = jLongValue >> 31;
            if (j == 0 || j == -1) {
                i = (int) jLongValue;
            } else {
                i = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            }
            numValueOf = Integer.valueOf(i);
        } else {
            numValueOf = null;
        }
        return defpackage.w65.b(pq.b(numValueOf, displayMetrics));
    }

    public static final int a(Long l, DisplayMetrics displayMetrics) {
        Integer numValueOf;
        int i;
        if (l != null) {
            long jLongValue = l.longValue();
            long j = jLongValue >> 31;
            if (j == 0 || j == -1) {
                i = (int) jLongValue;
            } else {
                i = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            }
            numValueOf = Integer.valueOf(i);
        } else {
            numValueOf = null;
        }
        return pq.a(numValueOf, displayMetrics);
    }

    public static final int a(Long l, DisplayMetrics displayMetrics, g12 g12Var) {
        Integer numValueOf;
        int i;
        if (l != null) {
            long jLongValue = l.longValue();
            long j = jLongValue >> 31;
            if (j == 0 || j == -1) {
                i = (int) jLongValue;
            } else {
                i = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            }
            numValueOf = Integer.valueOf(i);
        } else {
            numValueOf = null;
        }
        return pq.a(numValueOf, displayMetrics, g12Var);
    }

    public static final int a(long j, g12 g12Var, DisplayMetrics displayMetrics) {
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

    public static final float a(Integer num, DisplayMetrics displayMetrics) {
        if (Build.VERSION.SDK_INT >= 34) {
            return TypedValue.deriveDimension(1, num.floatValue(), displayMetrics);
        }
        return num.floatValue() / displayMetrics.density;
    }

    public static final int a(h12 h12Var, DisplayMetrics displayMetrics, fs2 fs2Var) {
        int iOrdinal = ((g12) h12Var.a.a(fs2Var)).ordinal();
        if (iOrdinal == 0) {
            return pq.a((Long) h12Var.b.a(fs2Var), displayMetrics);
        }
        if (iOrdinal == 1) {
            return pq.b((Long) h12Var.b.a(fs2Var), displayMetrics);
        }
        if (iOrdinal == 2) {
            long jLongValue = ((Number) h12Var.b.a(fs2Var)).longValue();
            long j = jLongValue >> 31;
            if (j == 0 || j == -1) {
                return (int) jLongValue;
            }
            return jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        }
        defpackage.me0.e();
        return 0;
    }
}
