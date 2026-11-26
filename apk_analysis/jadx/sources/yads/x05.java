package yads;

import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import android.widget.ProgressBar;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
public final class x05 extends Animation {
    public final int a;
    public final int b;
    public final WeakReference c;

    public x05(ProgressBar progressBar, int i, int i2) {
        this.a = i;
        this.b = i2;
        this.c = new WeakReference(progressBar);
        setInterpolator(new LinearInterpolator());
    }

    @Override // android.view.animation.Animation
    public final void applyTransformation(float f, Transformation transformation) {
        ProgressBar progressBar = (ProgressBar) this.c.get();
        if (progressBar != null) {
            super.applyTransformation(f, transformation);
            int i = this.a;
            progressBar.setProgress(Math.round(((this.b - i) * f) + i));
        }
    }
}
