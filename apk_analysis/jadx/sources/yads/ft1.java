package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class ft1 implements View.OnAttachStateChangeListener {
    public final /* synthetic */ gt1 a;

    public ft1(gt1 gt1Var) {
        this.a = gt1Var;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        gt1 gt1Var = this.a;
        br0 br0Var = gt1Var.e;
        if (br0Var == null) {
            return;
        }
        ((bj2) gt1Var.f.a.n.I.getValue()).b(this.a.f, view, br0Var);
    }
}
