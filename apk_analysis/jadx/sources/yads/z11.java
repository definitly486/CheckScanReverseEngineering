package yads;

import android.animation.Animator;

/* JADX INFO: loaded from: classes6.dex */
public final class z11 implements Animator.AnimatorListener {
    public final /* synthetic */ a21 a;
    public final /* synthetic */ defpackage.b36 b;

    public z11(a21 a21Var, defpackage.b36 b36Var) {
        this.a = a21Var;
        this.b = b36Var;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.a.b.remove(this.b);
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}
