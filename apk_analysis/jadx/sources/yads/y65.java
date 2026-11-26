package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class y65 implements View.OnClickListener {
    public final nf6 a;
    public final sl4 b;
    public final w65 c;

    public y65(nf6 nf6Var, sl4 sl4Var, w65 w65Var) {
        this.a = nf6Var;
        this.b = sl4Var;
        this.c = w65Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        am4 am4Var = (am4) this.a.b();
        if (am4Var != null) {
            v65 v65Var = am4Var.c.a;
            this.c.getClass();
            w65.a(v65Var);
            tl4 tl4Var = this.b.a;
            tl4Var.a(tl4Var.i);
        }
    }
}
