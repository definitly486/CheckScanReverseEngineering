package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class k0 implements View.OnAttachStateChangeListener {
    public final /* synthetic */ q0 a;

    public k0(q0 q0Var) {
        this.a = q0Var;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.a.a.getViewTreeObserver().addOnGlobalLayoutListener(this.a.c);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.a.a.getViewTreeObserver().removeOnGlobalLayoutListener(this.a.c);
        this.a.a();
    }
}
