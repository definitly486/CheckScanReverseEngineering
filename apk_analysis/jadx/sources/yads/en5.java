package yads;

import android.animation.Animator;
import defpackage.nl3;

/* JADX INFO: loaded from: classes6.dex */
public final class en5 implements Animator.AnimatorListener {
    public final nl3 a;
    public boolean b;

    public en5(nl3 nl3Var) {
        this.a = nl3Var;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.b = true;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.a.invoke(Boolean.valueOf(this.b));
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.b = false;
    }
}
