package yads;

import android.graphics.Typeface;

/* JADX INFO: loaded from: classes6.dex */
public abstract class gf2 {
    public static final int a(tf1 tf1Var, Integer num) {
        if (num != null) {
            return num.intValue();
        }
        int i = tf1Var == null ? -1 : ff2.a[tf1Var.ordinal()];
        if (i == 1) {
            return 300;
        }
        if (i != 3) {
            return i != 4 ? 400 : 700;
        }
        return 500;
    }

    public static final Typeface a(tf1 tf1Var, Integer num, cf2 cf2Var) {
        Typeface typefaceA = cf2Var.a(a(tf1Var, num));
        return typefaceA == null ? Typeface.DEFAULT : typefaceA;
    }
}
