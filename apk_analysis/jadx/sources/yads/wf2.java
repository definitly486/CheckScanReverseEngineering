package yads;

import android.animation.Animator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class wf2 implements Animator.AnimatorListener {
    public final /* synthetic */ List a;
    public final /* synthetic */ vq0 b;
    public final /* synthetic */ fs2 c;

    public wf2(List list, vq0 vq0Var, fs2 fs2Var) {
        this.a = list;
        this.b = vq0Var;
        this.c = fs2Var;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        for (xr0 xr0Var : this.a) {
            vq0 vq0Var = this.b;
            fs2 fs2Var = this.c;
            bt0 bt0Var = (bt0) vq0Var.n.G.getValue();
            lu0 lu0Var = vq0Var.R;
            bt0Var.getClass();
            if (((Boolean) xr0Var.b.a(fs2Var)).booleanValue()) {
                bt0Var.a(vq0Var, fs2Var, xr0Var, lu0Var);
            }
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}
