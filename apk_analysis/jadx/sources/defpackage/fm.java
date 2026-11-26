package defpackage;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import com.warefly.checkscan.tasks.ui.images.AnimatedImageView;

/* JADX INFO: loaded from: classes5.dex */
public final class fm extends j72<Bitmap> {
    public final /* synthetic */ int b;
    public final /* synthetic */ AnimatedImageView c;

    public fm(int i, AnimatedImageView animatedImageView) {
        this.b = i;
        this.c = animatedImageView;
    }

    @Override // defpackage.wk8
    public final void onLoadCleared(Drawable drawable) {
        this.c.d = null;
    }

    @Override // defpackage.wk8
    public final void onResourceReady(Object obj, k29 k29Var) {
        final Bitmap bitmap = (Bitmap) obj;
        final AnimatedImageView animatedImageView = this.c;
        int i = animatedImageView.q.get();
        final int i2 = this.b;
        if (i2 == i && animatedImageView.isAttachedToWindow()) {
            animatedImageView.post(new Runnable() { // from class: em
                @Override // java.lang.Runnable
                public final void run() {
                    int i3 = i2;
                    final AnimatedImageView animatedImageView2 = animatedImageView;
                    Bitmap bitmap2 = bitmap;
                    if (i3 == animatedImageView2.q.get() && animatedImageView2.isAttachedToWindow()) {
                        animatedImageView2.d = bitmap2;
                        animatedImageView2.d();
                        animatedImageView2.c();
                        if (i3 != animatedImageView2.q.get()) {
                            return;
                        }
                        AnimatorSet animatorSet = animatedImageView2.p;
                        if (animatorSet != null) {
                            animatorSet.cancel();
                        }
                        animatedImageView2.p = null;
                        if (!animatedImageView2.isAttachedToWindow() || !animatedImageView2.o.get()) {
                            animatedImageView2.n.set(false);
                            return;
                        }
                        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                        valueAnimatorOfFloat.setDuration(animatedImageView2.r);
                        valueAnimatorOfFloat.setInterpolator(new AccelerateDecelerateInterpolator());
                        valueAnimatorOfFloat.addListener(new am(animatedImageView2));
                        valueAnimatorOfFloat.addUpdateListener(new zl(animatedImageView2, 0));
                        valueAnimatorOfFloat.addListener(new bm(animatedImageView2));
                        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
                        valueAnimatorOfFloat2.setDuration(animatedImageView2.s);
                        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(0.0f, 1.0f);
                        valueAnimatorOfFloat3.setDuration(animatedImageView2.t);
                        valueAnimatorOfFloat3.setInterpolator(new AccelerateInterpolator());
                        final o07 o07Var = new o07();
                        final o07 o07Var2 = new o07();
                        final o07 o07Var3 = new o07();
                        final o07 o07Var4 = new o07();
                        valueAnimatorOfFloat3.addListener(new cm(o07Var, o07Var2, o07Var3, o07Var4, animatedImageView2));
                        valueAnimatorOfFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: yl
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                int i4 = AnimatedImageView.C;
                                valueAnimator.getClass();
                                Object animatedValue = valueAnimator.getAnimatedValue();
                                animatedValue.getClass();
                                float fFloatValue = ((Float) animatedValue).floatValue();
                                float f = o07Var.b;
                                float f2 = ((fFloatValue / 2.0f) * (o07Var3.b - f)) + f;
                                AnimatedImageView animatedImageView3 = animatedImageView2;
                                animatedImageView3.g = f2;
                                float f3 = o07Var2.b;
                                animatedImageView3.f = i8.b(o07Var4.b, f3, fFloatValue, f3);
                                animatedImageView3.k = (-45.0f) * fFloatValue;
                                animatedImageView3.j = 1.0f - (0.3f * fFloatValue);
                                animatedImageView3.m = (int) ((1.0f - fFloatValue) * 255.0f);
                                animatedImageView3.invalidate();
                            }
                        });
                        valueAnimatorOfFloat3.addListener(new dm(animatedImageView2));
                        AnimatorSet animatorSet2 = new AnimatorSet();
                        animatorSet2.playSequentially(valueAnimatorOfFloat, valueAnimatorOfFloat2, valueAnimatorOfFloat3);
                        animatorSet2.addListener(new gm(i3, animatedImageView2));
                        animatorSet2.start();
                        animatedImageView2.p = animatorSet2;
                    }
                }
            });
        }
    }
}
