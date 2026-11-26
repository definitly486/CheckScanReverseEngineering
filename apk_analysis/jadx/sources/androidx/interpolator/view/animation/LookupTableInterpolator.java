package androidx.interpolator.view.animation;

import android.view.animation.Interpolator;
import defpackage.i8;
import defpackage.rg;

/* JADX INFO: loaded from: classes3.dex */
abstract class LookupTableInterpolator implements Interpolator {
    private final float mStepSize;
    private final float[] mValues;

    public LookupTableInterpolator(float[] fArr) {
        this.mValues = fArr;
        this.mStepSize = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.mValues;
        int iMin = Math.min((int) ((fArr.length - 1) * f), fArr.length - 2);
        float f2 = this.mStepSize;
        float fB = rg.b(iMin, f2, f, f2);
        float[] fArr2 = this.mValues;
        float f3 = fArr2[iMin];
        return i8.b(fArr2[iMin + 1], f3, fB, f3);
    }
}
