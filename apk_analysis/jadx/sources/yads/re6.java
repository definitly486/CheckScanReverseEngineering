package yads;

import android.graphics.Matrix;

/* JADX INFO: loaded from: classes6.dex */
public final class re6 {
    public final ql5 a;

    public re6(ql5 ql5Var, ql5 ql5Var2) {
        this.a = ql5Var;
    }

    public final Matrix a(float f, float f2, qe6 qe6Var) {
        int iOrdinal = qe6Var.ordinal();
        if (iOrdinal == 0) {
            Matrix matrix = new Matrix();
            matrix.setScale(f, f2, 0.0f, 0.0f);
            return matrix;
        }
        if (iOrdinal != 1) {
            defpackage.me0.e();
            return null;
        }
        ql5 ql5Var = this.a;
        float f3 = ql5Var.b / 2.0f;
        float f4 = ql5Var.c / 2.0f;
        Matrix matrix2 = new Matrix();
        matrix2.setScale(f, f2, f3, f4);
        return matrix2;
    }
}
