package yads;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import defpackage.ll3;

/* JADX INFO: loaded from: classes6.dex */
public final class i32 extends AnimatorListenerAdapter {
    public final /* synthetic */ k32 a;

    public i32(k32 k32Var) {
        this.a = k32Var;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        ll3 ll3Var = this.a.p;
        if (ll3Var != null) {
            ll3Var.invoke();
        }
    }
}
