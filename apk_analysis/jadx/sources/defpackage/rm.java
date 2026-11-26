package defpackage;

import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;

/* JADX INFO: loaded from: classes.dex */
public final class rm extends Animatable2Compat.AnimationCallback {
    public final /* synthetic */ ImageView a;
    public final /* synthetic */ AnimatedVectorDrawableCompat b;

    public rm(ImageView imageView, AnimatedVectorDrawableCompat animatedVectorDrawableCompat) {
        this.a = imageView;
        this.b = animatedVectorDrawableCompat;
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat.AnimationCallback
    public final void onAnimationEnd(Drawable drawable) {
        if (ValueAnimator.areAnimatorsEnabled()) {
            this.a.post(new qm(this.b, 0));
        }
    }
}
