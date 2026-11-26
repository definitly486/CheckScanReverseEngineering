package yads;

import android.util.DisplayMetrics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class n51 {
    public static final float a(l42 l42Var, fs2 fs2Var, DisplayMetrics displayMetrics) {
        as2 as2Var;
        as2 as2Var2;
        g12 g12Var = (l42Var == null || (as2Var2 = l42Var.c) == null) ? null : (g12) as2Var2.a(fs2Var);
        int i = g12Var == null ? -1 : m51.a[g12Var.ordinal()];
        if (i == 1) {
            return pq.a((Number) l42Var.d.a(fs2Var), displayMetrics);
        }
        if (i == 2) {
            return pq.b((Number) l42Var.d.a(fs2Var), displayMetrics);
        }
        if (i == 3) {
            return (float) ((Number) l42Var.d.a(fs2Var)).doubleValue();
        }
        if (l42Var == null || (as2Var = l42Var.d) == null) {
            return 0.0f;
        }
        return (float) ((Number) as2Var.a(fs2Var)).doubleValue();
    }
}
