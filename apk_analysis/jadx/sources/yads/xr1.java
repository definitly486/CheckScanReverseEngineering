package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class xr1 implements View.OnLayoutChangeListener {
    public final /* synthetic */ et1 b;

    public xr1(et1 et1Var) {
        this.b = et1Var;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        view.removeOnLayoutChangeListener(this);
        this.b.a.requestTransform();
    }
}
