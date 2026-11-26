package yads;

import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes6.dex */
public final class l95 implements Interpolator {
    public final Interpolator a;

    public l95(Interpolator interpolator) {
        this.a = interpolator;
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        return this.a.getInterpolation(1.0f - f);
    }
}
