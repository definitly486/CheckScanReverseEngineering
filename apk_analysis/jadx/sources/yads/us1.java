package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class us1 implements View.OnLayoutChangeListener {
    public final /* synthetic */ vs1 b;

    public us1(vs1 vs1Var) {
        this.b = vs1Var;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        view.removeOnLayoutChangeListener(this);
        this.b.a();
    }
}
