package defpackage;

import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes3.dex */
public final class rd2 {

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[md7.values().length];
            try {
                iArr[md7.FILL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[md7.FIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public static final long a(int i, int i2, t18 t18Var, md7 md7Var, t18 t18Var2) {
        int i3;
        int i4;
        if (!aa4.e(t18Var, t18.c)) {
            i = c(t18Var.a, md7Var);
            i2 = c(t18Var.b, md7Var);
        }
        hn2 hn2Var = t18Var2.a;
        hn2 hn2Var2 = t18Var2.b;
        if ((hn2Var instanceof hn2.a) && i != Integer.MIN_VALUE && i != Integer.MAX_VALUE && i > (i4 = ((hn2.a) hn2Var).a)) {
            i = i4;
        }
        if ((hn2Var2 instanceof hn2.a) && i2 != Integer.MIN_VALUE && i2 != Integer.MAX_VALUE && i2 > (i3 = ((hn2.a) hn2Var2).a)) {
            i2 = i3;
        }
        return (((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) i) << 32);
    }

    public static final double b(int i, int i2, int i3, int i4, md7 md7Var, t18 t18Var) {
        double dMax;
        double d = i;
        double d2 = ((double) i3) / d;
        double d3 = i2;
        double d4 = ((double) i4) / d3;
        int i5 = a.a[md7Var.ordinal()];
        if (i5 == 1) {
            dMax = Math.max(d2, d4);
        } else {
            if (i5 != 2) {
                me0.e();
                return 0.0d;
            }
            dMax = Math.min(d2, d4);
        }
        hn2 hn2Var = t18Var.a;
        if (hn2Var instanceof hn2.a) {
            double d5 = ((double) ((hn2.a) hn2Var).a) / d;
            if (dMax > d5) {
                dMax = d5;
            }
        }
        hn2 hn2Var2 = t18Var.b;
        if (hn2Var2 instanceof hn2.a) {
            double d6 = ((double) ((hn2.a) hn2Var2).a) / d3;
            if (dMax > d6) {
                return d6;
            }
        }
        return dMax;
    }

    public static int c(hn2 hn2Var, md7 md7Var) {
        if (hn2Var instanceof hn2.a) {
            return ((hn2.a) hn2Var).a;
        }
        int i = a.a[md7Var.ordinal()];
        if (i == 1) {
            return Integer.MIN_VALUE;
        }
        if (i == 2) {
            return Integer.MAX_VALUE;
        }
        me0.e();
        return 0;
    }
}
