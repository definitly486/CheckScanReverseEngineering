package androidx.core.animation;

import android.animation.Animator;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class AnimatorKt$addListener$listener$1 implements Animator.AnimatorListener {
    final /* synthetic */ nl3<Animator, j59> $onCancel;
    final /* synthetic */ nl3<Animator, j59> $onEnd;
    final /* synthetic */ nl3<Animator, j59> $onRepeat;
    final /* synthetic */ nl3<Animator, j59> $onStart;

    /* JADX WARN: Multi-variable type inference failed */
    public AnimatorKt$addListener$listener$1(nl3<? super Animator, j59> nl3Var, nl3<? super Animator, j59> nl3Var2, nl3<? super Animator, j59> nl3Var3, nl3<? super Animator, j59> nl3Var4) {
        this.$onRepeat = nl3Var;
        this.$onEnd = nl3Var2;
        this.$onCancel = nl3Var3;
        this.$onStart = nl3Var4;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.$onCancel.invoke(animator);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.$onEnd.invoke(animator);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
        this.$onRepeat.invoke(animator);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.$onStart.invoke(animator);
    }
}
