package yads;

import android.opengl.Matrix;

/* JADX INFO: loaded from: classes6.dex */
public final class h03 {
    public final float[] a = new float[16];
    public final float[] b = new float[16];
    public final fx5 c = new fx5();
    public boolean d;

    public final void a(long j, float[] fArr) {
        Object objA;
        fx5 fx5Var = this.c;
        synchronized (fx5Var) {
            objA = fx5Var.a(j, true);
        }
        float[] fArr2 = (float[]) objA;
        if (fArr2 == null) {
            return;
        }
        float[] fArr3 = this.b;
        float f = fArr2[0];
        float f2 = -fArr2[1];
        float f3 = -fArr2[2];
        float length = Matrix.length(f, f2, f3);
        if (length != 0.0f) {
            Matrix.setRotateM(fArr3, 0, (float) Math.toDegrees(length), f / length, f2 / length, f3 / length);
        } else {
            Matrix.setIdentityM(fArr3, 0);
        }
        if (!this.d) {
            a(this.a, this.b);
            this.d = true;
        }
        Matrix.multiplyMM(fArr, 0, this.a, 0, this.b, 0);
    }

    public static void a(float[] fArr, float[] fArr2) {
        Matrix.setIdentityM(fArr, 0);
        float f = fArr2[10];
        float f2 = fArr2[8];
        float fSqrt = (float) Math.sqrt((f2 * f2) + (f * f));
        float f3 = fArr2[10] / fSqrt;
        fArr[0] = f3;
        float f4 = fArr2[8];
        fArr[2] = f4 / fSqrt;
        fArr[8] = (-f4) / fSqrt;
        fArr[10] = f3;
    }
}
