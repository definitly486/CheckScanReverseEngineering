package yads;

import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes6.dex */
public final class vl implements View.OnAttachStateChangeListener {
    public final ViewTreeObserver.OnGlobalLayoutListener a;

    public vl(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        this.a = onGlobalLayoutListener;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        view.getViewTreeObserver().addOnGlobalLayoutListener(this.a);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        view.getViewTreeObserver().removeOnGlobalLayoutListener(this.a);
    }
}
