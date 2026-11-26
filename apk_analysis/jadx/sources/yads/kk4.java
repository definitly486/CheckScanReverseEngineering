package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class kk4 {
    public final aa5 a;
    public final n03 b;
    public View c;

    public kk4(ux5 ux5Var, sj4 sj4Var, bx5 bx5Var) {
        this.a = new aa5(ux5Var);
        jk4 jk4Var = new jk4(this);
        el4 el4Var = sj4Var.a;
        lm4 lm4Var = sj4Var.b;
        this.b = el4Var != null ? new xl4(el4Var, jk4Var, bx5Var) : lm4Var != null ? new qm4(lm4Var, jk4Var, bx5Var) : new xi4(jk4Var, bx5Var);
    }
}
