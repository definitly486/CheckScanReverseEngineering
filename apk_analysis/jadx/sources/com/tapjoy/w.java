package com.tapjoy;

import android.animation.Animator;

/* JADX INFO: loaded from: classes4.dex */
public final class w implements Animator.AnimatorListener {
    public final /* synthetic */ x a;

    public w(x xVar) {
        this.a = xVar;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        TJCloseButton tJCloseButton = this.a.a;
        tJCloseButton.setClickable(tJCloseButton.a);
        this.a.a.b = false;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        TJCloseButton tJCloseButton = this.a.a;
        tJCloseButton.setClickable(tJCloseButton.a);
        this.a.a.b = false;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}
