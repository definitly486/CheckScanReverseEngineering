package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
public final class ve9 implements View.OnAttachStateChangeListener {
    public final View b;
    public se9 c;
    public s68 d;
    public te9 e;
    public boolean f;

    public ve9(View view) {
        this.b = view;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        te9 te9Var = this.e;
        if (te9Var == null) {
            return;
        }
        this.f = true;
        sy6 sy6Var = te9Var.b;
        b24 b24Var = te9Var.c;
        cz6.a(b24Var, av0.a(sy6Var.b, (o22) sy6Var.a.c.getValue(), null, new ty6(sy6Var, b24Var, null), 2));
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        te9 te9Var = this.e;
        if (te9Var != null) {
            te9Var.c();
        }
    }
}
