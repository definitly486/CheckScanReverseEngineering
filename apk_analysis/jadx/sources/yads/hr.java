package yads;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: loaded from: classes6.dex */
public final class hr extends AnimatorListenerAdapter {
    public boolean a = false;
    public final /* synthetic */ ir b;

    public hr(ir irVar) {
        this.b = irVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.a = true;
        this.b.t = 1.0f;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (this.a) {
            return;
        }
        ir irVar = this.b;
        irVar.d = irVar.u;
        irVar.e = 0.0f;
    }
}
