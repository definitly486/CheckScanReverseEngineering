package defpackage;

import android.graphics.Color;

/* JADX INFO: loaded from: classes3.dex */
public final class un1 implements cc9<Integer> {
    public static final un1 b = new un1();

    @Override // defpackage.cc9
    public final Integer e(td4 td4Var, float f) {
        boolean z = td4Var.U() == td4.b.BEGIN_ARRAY;
        if (z) {
            td4Var.m();
        }
        double dE = td4Var.E();
        double dE2 = td4Var.E();
        double dE3 = td4Var.E();
        double dE4 = td4Var.U() == td4.b.NUMBER ? td4Var.E() : 1.0d;
        if (z) {
            td4Var.o();
        }
        if (dE <= 1.0d && dE2 <= 1.0d && dE3 <= 1.0d) {
            dE *= 255.0d;
            dE2 *= 255.0d;
            dE3 *= 255.0d;
            if (dE4 <= 1.0d) {
                dE4 *= 255.0d;
            }
        }
        return Integer.valueOf(Color.argb((int) dE4, (int) dE, (int) dE2, (int) dE3));
    }
}
