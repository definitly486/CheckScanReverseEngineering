package yads;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.os.Build;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class nc5 extends AnimatorListenerAdapter {
    public final View a;
    public final float b;
    public final float c;
    public boolean d;
    public final /* synthetic */ oc5 e;

    public nc5(oc5 oc5Var, View view, float f, float f2) {
        this.e = oc5Var;
        this.a = view;
        this.b = f;
        this.c = f2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.a.setScaleX(this.b);
        this.a.setScaleY(this.c);
        if (this.d) {
            int i = Build.VERSION.SDK_INT;
            View view = this.a;
            if (i >= 28) {
                view.resetPivot();
            } else {
                view.setPivotX(view.getWidth() * 0.5f);
                View view2 = this.a;
                view2.setPivotY(view2.getHeight() * 0.5f);
            }
        }
        animator.removeListener(this);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.a.setVisibility(0);
        oc5 oc5Var = this.e;
        if (oc5Var.b == 0.5f && oc5Var.c == 0.5f) {
            return;
        }
        this.d = true;
        View view = this.a;
        view.setPivotX(view.getWidth() * this.e.b);
        View view2 = this.a;
        view2.setPivotY(view2.getHeight() * this.e.c);
    }
}
