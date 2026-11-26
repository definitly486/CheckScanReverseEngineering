package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes4.dex */
public final class pn5 implements ViewTreeObserver.OnDrawListener {
    public final View b;
    public final x16 c;
    public final zt0 d;
    public final wt8 e;

    public pn5(View view, az4 az4Var, qb6 qb6Var, x16 x16Var, zt0 zt0Var) {
        qb6Var.getClass();
        this.b = view;
        this.c = x16Var;
        this.d = zt0Var;
        this.e = new wt8(az4Var, qb6Var);
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public final void onDraw() {
        this.c.invoke();
        this.e.b(new ed0(this, 3));
    }
}
