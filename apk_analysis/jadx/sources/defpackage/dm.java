package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.warefly.checkscan.tasks.ui.images.AnimatedImageView;

/* JADX INFO: loaded from: classes5.dex */
public final class dm extends AnimatorListenerAdapter {
    public final /* synthetic */ AnimatedImageView a;

    public dm(AnimatedImageView animatedImageView) {
        this.a = animatedImageView;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        animator.getClass();
        this.a.m = 255;
    }
}
