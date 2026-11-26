package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.warefly.checkscan.tasks.ui.images.AnimatedImageView;

/* JADX INFO: loaded from: classes5.dex */
public final class am extends AnimatorListenerAdapter {
    public final /* synthetic */ AnimatedImageView a;

    public am(AnimatedImageView animatedImageView) {
        this.a = animatedImageView;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        animator.getClass();
        AnimatedImageView animatedImageView = this.a;
        animatedImageView.j = 1.0f;
        animatedImageView.k = 45.0f;
        animatedImageView.m = 255;
    }
}
