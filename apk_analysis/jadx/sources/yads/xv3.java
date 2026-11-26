package yads;

import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes6.dex */
public abstract class xv3 implements Interpolator {
    public final float[] a;
    public final float b;

    public xv3(float[] fArr) {
        this.a = fArr;
        fArr.getClass();
        this.b = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        if (f <= 0.0f) {
            return 0.0f;
        }
        if (f >= 1.0f) {
            return 1.0f;
        }
        float[] fArr = this.a;
        fArr.getClass();
        int length = (int) ((fArr.length - 1) * f);
        float[] fArr2 = this.a;
        int length2 = fArr2.length - 2;
        if (length > length2) {
            length = length2;
        }
        float f2 = this.b;
        float fB = defpackage.rg.b(length, f2, f, f2);
        float f3 = fArr2[length];
        return defpackage.i8.b(fArr2[length + 1], f3, fB, f3);
    }
}
