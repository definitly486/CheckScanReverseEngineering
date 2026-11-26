package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class sq0 implements View.OnAttachStateChangeListener {
    public final /* synthetic */ vq0 a;
    public final /* synthetic */ vq0 b;

    public sq0(vq0 vq0Var, vq0 vq0Var2) {
        this.a = vq0Var;
        this.b = vq0Var2;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.a.removeOnAttachStateChangeListener(this);
        ((w41) this.b.n.o0.getValue()).a();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
