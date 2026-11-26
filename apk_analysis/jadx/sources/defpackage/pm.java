package defpackage;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import com.warefly.checkscan.R;

/* JADX INFO: loaded from: classes.dex */
public final class pm {

    public static final class a extends Animatable2Compat.AnimationCallback {
        public final /* synthetic */ ImageView a;
        public final /* synthetic */ AnimatedVectorDrawableCompat b;

        public a(ImageView imageView, AnimatedVectorDrawableCompat animatedVectorDrawableCompat) {
            this.a = imageView;
            this.b = animatedVectorDrawableCompat;
        }

        @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat.AnimationCallback
        public final void onAnimationEnd(Drawable drawable) {
            if (ValueAnimator.areAnimatorsEnabled()) {
                this.a.post(new om(this.b, 0));
            }
        }
    }

    public static void a(View view, Drawable drawable) {
        Drawable drawableMutate;
        if (drawable == null || (drawableMutate = drawable.mutate()) == null) {
            drawableMutate = null;
        } else {
            drawableMutate.setAlpha(0);
        }
        view.setBackground(drawableMutate);
        Drawable background = view.getBackground();
        if (background == null) {
            return;
        }
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(background, "alpha", 0, 255);
        objectAnimatorOfInt.setDuration(300L);
        objectAnimatorOfInt.start();
        view.postDelayed(new nm(background, 0), 2300L);
    }

    public static final void b(Context context, int i, ImageView imageView) {
        imageView.getClass();
        AnimatedVectorDrawableCompat animatedVectorDrawableCompatCreate = AnimatedVectorDrawableCompat.create(context, i);
        if (animatedVectorDrawableCompatCreate != null) {
            animatedVectorDrawableCompatCreate.registerAnimationCallback(new a(imageView, animatedVectorDrawableCompatCreate));
        }
        imageView.setImageDrawable(animatedVectorDrawableCompatCreate);
        if (animatedVectorDrawableCompatCreate != null) {
            animatedVectorDrawableCompatCreate.start();
        }
    }

    public static final void c(ImageView imageView) {
        imageView.getClass();
        imageView.setVisibility(0);
        AnimatedVectorDrawableCompat animatedVectorDrawableCompatCreate = AnimatedVectorDrawableCompat.create(imageView.getContext(), R.drawable.circle_pulse_animated);
        if (animatedVectorDrawableCompatCreate != null) {
            animatedVectorDrawableCompatCreate.registerAnimationCallback(new rm(imageView, animatedVectorDrawableCompatCreate));
        }
        imageView.setImageDrawable(animatedVectorDrawableCompatCreate);
        if (animatedVectorDrawableCompatCreate != null) {
            animatedVectorDrawableCompatCreate.start();
        }
    }
}
