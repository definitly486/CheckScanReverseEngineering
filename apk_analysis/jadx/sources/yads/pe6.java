package yads;

import android.graphics.Matrix;
import android.view.TextureView;

/* JADX INFO: loaded from: classes6.dex */
public final class pe6 implements iw4 {
    public final ix3 a = new ix3();
    public ql5 b;
    public ql5 c;
    public TextureView d;
    public se6 e;

    public final void a() {
        Matrix matrixA;
        ql5 ql5Var = this.c;
        se6 se6Var = this.e;
        ql5 ql5Var2 = this.b;
        TextureView textureView = this.d;
        if (ql5Var2 == null || ql5Var == null || se6Var == null || textureView == null) {
            return;
        }
        re6 re6Var = new re6(ql5Var, ql5Var2);
        if (ql5Var2.b <= 0 || ql5Var2.c <= 0 || ql5Var.b <= 0 || ql5Var.c <= 0) {
            matrixA = null;
        } else {
            int iOrdinal = se6Var.ordinal();
            if (iOrdinal == 0) {
                matrixA = re6Var.a(1.0f, 1.0f, qe6.LEFT_TOP);
            } else if (iOrdinal == 1) {
                float f = ql5Var.b / ql5Var2.b;
                float f2 = ql5Var.c / ql5Var2.c;
                float fMin = Math.min(f, f2);
                matrixA = re6Var.a(fMin / f, fMin / f2, qe6.CENTER);
            } else {
                if (iOrdinal != 2) {
                    defpackage.me0.e();
                    return;
                }
                float f3 = ql5Var.b / ql5Var2.b;
                float f4 = ql5Var.c / ql5Var2.c;
                float fMax = Math.max(f3, f4);
                matrixA = re6Var.a(fMax / f3, fMax / f4, qe6.CENTER);
            }
        }
        if (matrixA != null) {
            textureView.setTransform(matrixA);
        }
    }

    public final void b() {
        TextureView textureView = this.d;
        if (this.e == null || textureView == null) {
            return;
        }
        this.a.getClass();
        Matrix matrix = new Matrix();
        matrix.setScale(0.0f, 0.0f, 0.0f, 0.0f);
        textureView.setTransform(matrix);
    }

    @Override // yads.iw4
    public final void onSurfaceSizeChanged(int i, int i2) {
        this.c = new ql5(i, i2);
        a();
    }

    @Override // yads.iw4
    public final void a(ye6 ye6Var) {
        int iB = ye6Var.b;
        float f = ye6Var.e;
        if (f > 0.0f) {
            iB = defpackage.w65.b(iB * f);
        }
        this.b = new ql5(iB, ye6Var.c);
        a();
    }
}
