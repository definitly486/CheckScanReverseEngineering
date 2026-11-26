package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class gk1 implements View.OnLayoutChangeListener {
    public final /* synthetic */ zh2 b;
    public final /* synthetic */ j66 c;
    public final /* synthetic */ bn1 d;
    public final /* synthetic */ boolean e;
    public final /* synthetic */ ao2 f;
    public final /* synthetic */ IllegalArgumentException g;

    public gk1(zh2 zh2Var, j66 j66Var, bn1 bn1Var, boolean z, ao2 ao2Var, IllegalArgumentException illegalArgumentException) {
        this.b = zh2Var;
        this.c = j66Var;
        this.d = bn1Var;
        this.e = z;
        this.f = ao2Var;
        this.g = illegalArgumentException;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        view.removeOnLayoutChangeListener(this);
        int iA = this.b.a(this.c.c);
        if (iA == -1) {
            ao2 ao2Var = this.f;
            ao2Var.b.add(this.g);
            ao2Var.a();
            return;
        }
        View viewFindViewById = this.d.getRootView().findViewById(iA);
        if (viewFindViewById != null) {
            viewFindViewById.setLabelFor(this.e ? -1 : this.d.getId());
            return;
        }
        ao2 ao2Var2 = this.f;
        ao2Var2.b.add(this.g);
        ao2Var2.a();
    }
}
