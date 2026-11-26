package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.warefly.checkscan.tasks.ui.images.AnimatedImageView;

/* JADX INFO: loaded from: classes5.dex */
public final class gm extends AnimatorListenerAdapter {
    public final /* synthetic */ int a;
    public final /* synthetic */ AnimatedImageView b;

    public gm(int i, AnimatedImageView animatedImageView) {
        this.a = i;
        this.b = animatedImageView;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        animator.getClass();
        this.b.n.set(false);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        animator.getClass();
        if (this.a == this.b.q.get()) {
            AnimatedImageView animatedImageView = this.b;
            animatedImageView.n.set(false);
            animatedImageView.p = null;
            if (animatedImageView.isAttachedToWindow() && !animatedImageView.b.isEmpty() && animatedImageView.o.get()) {
                animatedImageView.post(new rh(animatedImageView, 1));
            }
        }
    }
}
