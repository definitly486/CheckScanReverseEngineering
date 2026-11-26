package androidx.compose.animation;

import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpecKt;
import androidx.compose.ui.unit.Density;
import defpackage.y83;

/* JADX INFO: loaded from: classes.dex */
public final class SplineBasedDecayKt {
    private static final float EndTension = 1.0f;
    private static final float Inflection = 0.35f;
    private static final float P1 = 0.175f;
    private static final float P2 = 0.35000002f;
    private static final float StartTension = 0.5f;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void computeSplineInfo(float[] fArr, float[] fArr2, int i) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10 = 0.0f;
        int i2 = 0;
        float f11 = 0.0f;
        while (true) {
            float f12 = 1.0f;
            if (i2 >= i) {
                fArr2[i] = 1.0f;
                fArr[i] = 1.0f;
                return;
            }
            float f13 = i2 / i;
            float f14 = 1.0f;
            while (true) {
                f = ((f14 - f10) / 2.0f) + f10;
                f2 = f12 - f;
                f3 = f * 3.0f * f2;
                f4 = f * f * f;
                float fB = y83.b(f, P2, f2 * P1, f3) + f4;
                f5 = f12;
                if (Math.abs(fB - f13) < 1.0E-5d) {
                    break;
                }
                if (fB > f13) {
                    f14 = f;
                } else {
                    f10 = f;
                }
                f12 = f5;
            }
            float f15 = 0.5f;
            fArr[i2] = (((f2 * 0.5f) + f) * f3) + f4;
            float f16 = f5;
            while (true) {
                f6 = ((f16 - f11) / 2.0f) + f11;
                f7 = f5 - f6;
                f8 = f6 * 3.0f * f7;
                f9 = f6 * f6 * f6;
                float fB2 = y83.b(f7, f15, f6, f8) + f9;
                float f17 = f13;
                if (Math.abs(fB2 - f13) >= 1.0E-5d) {
                    if (fB2 > f17) {
                        f16 = f6;
                    } else {
                        f11 = f6;
                    }
                    f13 = f17;
                    f15 = 0.5f;
                }
            }
            fArr2[i2] = (((f6 * P2) + (f7 * P1)) * f8) + f9;
            i2++;
        }
    }

    public static final <T> DecayAnimationSpec<T> splineBasedDecay(Density density) {
        return DecayAnimationSpecKt.generateDecayAnimationSpec(new SplineBasedFloatDecayAnimationSpec(density));
    }
}
