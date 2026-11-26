package yads;

import android.view.ViewGroup;
import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes6.dex */
public final class dh6 implements ViewTreeObserver.OnPreDrawListener {
    public final /* synthetic */ ViewTreeObserver.OnPreDrawListener a;
    public final /* synthetic */ ViewGroup b;

    public dh6(ViewTreeObserver.OnPreDrawListener onPreDrawListener, ViewGroup viewGroup) {
        this.a = onPreDrawListener;
        this.b = viewGroup;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        this.a.onPreDraw();
        this.b.getViewTreeObserver().removeOnPreDrawListener(this);
        return true;
    }
}
