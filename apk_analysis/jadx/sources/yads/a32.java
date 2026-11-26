package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class a32 implements View.OnLayoutChangeListener {
    public final /* synthetic */ c32 b;
    public final /* synthetic */ vq0 c;
    public final /* synthetic */ fs2 d;
    public final /* synthetic */ View e;
    public final /* synthetic */ br0 f;

    public a32(c32 c32Var, vq0 vq0Var, fs2 fs2Var, View view, br0 br0Var) {
        this.b = c32Var;
        this.c = vq0Var;
        this.d = fs2Var;
        this.e = view;
        this.f = br0Var;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        view.removeOnLayoutChangeListener(this);
        bj2.a(this.b.k, this.c, this.d, this.e, this.f);
    }
}
