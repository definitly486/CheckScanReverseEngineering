package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class og3 implements View.OnAttachStateChangeListener {
    public final /* synthetic */ pg3 a;

    public og3(pg3 pg3Var) {
        this.a = pg3Var;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.a.dismiss();
    }
}
