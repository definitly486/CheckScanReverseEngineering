package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class ub2 implements View.OnLayoutChangeListener {
    public final /* synthetic */ xb2 b;
    public final /* synthetic */ View c;
    public final /* synthetic */ qb2 d;
    public final /* synthetic */ tt e;
    public final /* synthetic */ boolean f;

    public ub2(xb2 xb2Var, View view, qb2 qb2Var, tt ttVar, boolean z) {
        this.b = xb2Var;
        this.c = view;
        this.d = qb2Var;
        this.e = ttVar;
        this.f = z;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        view.removeOnLayoutChangeListener(this);
        this.b.a(this.c, this.d, this.e, this.f);
    }
}
