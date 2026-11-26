package yads;

import android.app.Dialog;

/* JADX INFO: loaded from: classes6.dex */
public final class p95 implements a3 {
    public final oa5 a;
    public final q95 b;

    public p95(x2 x2Var, oa5 oa5Var) {
        q95 q95Var = new q95(x2Var);
        this.a = oa5Var;
        this.b = q95Var;
    }

    @Override // yads.a3
    public final void b() {
        oa5 oa5Var = this.a;
        oa5Var.d = true;
        Dialog dialog = oa5Var.b.d;
        if (dialog != null) {
            eo0.a(dialog);
        }
        this.b.a.a(13, null);
    }
}
