package yads;

import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes6.dex */
public final class sr4 implements ViewTreeObserver.OnPreDrawListener {
    public final ViewTreeObserver.OnPreDrawListener a;
    public final ml2 b;

    public sr4(ViewTreeObserver.OnPreDrawListener onPreDrawListener, ml2 ml2Var) {
        this.a = onPreDrawListener;
        this.b = ml2Var;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        boolean zOnPreDraw = this.a.onPreDraw();
        ml2 ml2Var = this.b;
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = this.a;
        cc5 cc5Var = (cc5) ml2Var;
        if (zOnPreDraw) {
            cc5Var.a = 0;
            return true;
        }
        int i = cc5Var.a;
        if (i < 3) {
            cc5Var.a = i + 1;
            cc5Var.b(onPreDrawListener);
            return false;
        }
        if (i == 3) {
            cc5Var.a = i + 1;
            cc5Var.a(onPreDrawListener);
        }
        return true;
    }
}
