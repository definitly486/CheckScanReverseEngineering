package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class wn1 implements View.OnClickListener {
    public final vn1 a;
    public final yn1 b;

    public wn1(vn1 vn1Var, yn1 yn1Var) {
        this.a = vn1Var;
        this.b = yn1Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view != null) {
            this.a.a(this.b.a, view);
        }
    }
}
