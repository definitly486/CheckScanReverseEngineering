package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class kb implements View.OnAttachStateChangeListener {
    public final /* synthetic */ lb a;

    public kb(lb lbVar) {
        this.a = lbVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.a.a();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        lb lbVar = this.a;
        sr4 sr4Var = lbVar.d;
        if (sr4Var != null) {
            lbVar.a.getViewTreeObserver().removeOnPreDrawListener(sr4Var);
        }
        lbVar.d = null;
    }
}
