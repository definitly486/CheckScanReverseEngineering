package defpackage;

/* JADX INFO: loaded from: classes.dex */
public class kx6 extends vc3 {
    public static double c(double d, double d2, double d3) {
        if (d2 <= d3) {
            if (d < d2) {
                return d2;
            }
            return d > d3 ? d3 : d;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + d3 + " is less than minimum " + d2 + '.');
    }

    public static float d(float f, float f2, float f3) {
        if (f2 <= f3) {
            if (f < f2) {
                return f2;
            }
            return f > f3 ? f3 : f;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + f3 + " is less than minimum " + f2 + '.');
    }

    public static int f(int i, int i2, int i3) {
        if (i2 <= i3) {
            if (i < i2) {
                return i2;
            }
            return i > i3 ? i3 : i;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i3 + " is less than minimum " + i2 + '.');
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int g(int i, y74 y74Var) {
        y74Var.getClass();
        int i2 = y74Var.c;
        int i3 = y74Var.b;
        if (y74Var instanceof nm1) {
            return ((Number) j(Integer.valueOf(i), (nm1) y74Var)).intValue();
        }
        if (y74Var.isEmpty()) {
            dc.c(y74Var, "Cannot coerce value to an empty range: ");
            return 0;
        }
        if (i < Integer.valueOf(i3).intValue()) {
            return Integer.valueOf(i3).intValue();
        }
        return i > Integer.valueOf(i2).intValue() ? Integer.valueOf(i2).intValue() : i;
    }

    public static long h(long j, long j2, long j3) {
        if (j2 > j3) {
            fg.c(lg.f(xp.f(j3, "Cannot coerce value to an empty range: maximum ", " is less than minimum "), j2, '.'));
            return 0L;
        }
        if (j < j2) {
            return j2;
        }
        return j > j3 ? j3 : j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long i(long j, dw4 dw4Var) {
        long j2 = dw4Var.c;
        long j3 = dw4Var.b;
        if (dw4Var instanceof nm1) {
            return ((Number) j(Long.valueOf(j), (nm1) dw4Var)).longValue();
        }
        if (dw4Var.isEmpty()) {
            dc.c(dw4Var, "Cannot coerce value to an empty range: ");
            return 0L;
        }
        if (j < Long.valueOf(j3).longValue()) {
            return Long.valueOf(j3).longValue();
        }
        return j > Long.valueOf(j2).longValue() ? Long.valueOf(j2).longValue() : j;
    }

    public static <T extends Comparable<? super T>> T j(T t, nm1<T> nm1Var) {
        nm1Var.getClass();
        if (nm1Var.isEmpty()) {
            dc.c(nm1Var, "Cannot coerce value to an empty range: ");
            return null;
        }
        if (!nm1Var.a(t, nm1Var.getStart()) || nm1Var.a(nm1Var.getStart(), t)) {
            return (!nm1Var.a(nm1Var.getEndInclusive(), t) || nm1Var.a(t, nm1Var.getEndInclusive())) ? t : nm1Var.getEndInclusive();
        }
        return nm1Var.getStart();
    }

    public static w74 k(int i, int i2) {
        return new w74(i, i2, -1);
    }

    public static w74 l(y74 y74Var) {
        return new w74(y74Var.c, y74Var.b, -y74Var.d);
    }

    public static w74 m(int i, y74 y74Var) {
        y74Var.getClass();
        boolean z = i > 0;
        Integer numValueOf = Integer.valueOf(i);
        if (!z) {
            dc.c(numValueOf, "Step must be positive, was: ");
            return null;
        }
        int i2 = y74Var.b;
        int i3 = y74Var.c;
        if (y74Var.d <= 0) {
            i = -i;
        }
        return new w74(i2, i3, i);
    }

    public static y74 n(int i, int i2) {
        if (i2 > Integer.MIN_VALUE) {
            return new y74(i, i2 - 1, 1);
        }
        y74 y74Var = y74.e;
        return y74.e;
    }
}
