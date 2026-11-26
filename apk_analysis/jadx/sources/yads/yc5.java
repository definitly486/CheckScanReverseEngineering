package yads;

import android.view.View;
import android.view.ViewGroup;
import androidx.transition.TransitionManager;

/* JADX INFO: loaded from: classes6.dex */
public final class yc5 implements View.OnAttachStateChangeListener {
    public final ViewGroup a;

    public yc5(ViewGroup viewGroup) {
        this.a = viewGroup;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.a.removeOnAttachStateChangeListener(this);
        TransitionManager.endTransitions(this.a);
    }
}
