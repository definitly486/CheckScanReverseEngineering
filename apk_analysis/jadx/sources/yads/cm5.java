package yads;

import defpackage.u96;
import java.util.HashSet;

/* JADX INFO: loaded from: classes6.dex */
public final class cm5 {
    public static final HashSet b = new HashSet(u96.i(ww5.PERCENTAGE, ww5.TIME));
    public final yw5 a = new yw5(b);

    public final bc6 a(p90 p90Var) {
        int i = p90Var.i;
        dm5 dm5Var = p90Var.g;
        if (dm5Var == null) {
            return null;
        }
        q86 q86VarA = this.a.a(dm5Var.a);
        if (q86VarA == null) {
            return null;
        }
        float f = q86VarA.c;
        if (p86.PERCENTS == q86VarA.b) {
            f = (long) ((f / 100.0f) * i);
        }
        return new bc6((long) Math.min(f, i));
    }
}
