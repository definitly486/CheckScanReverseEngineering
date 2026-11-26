package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class lq0 {
    public final qh2 a;
    public final w41 b;
    public final my1 c;

    public lq0(qh2 qh2Var, w41 w41Var, my1 my1Var) {
        this.a = qh2Var;
        this.b = w41Var;
        this.c = my1Var;
    }

    public final View a(br0 br0Var, tt ttVar, n32 n32Var) {
        fs2 fs2Var = ttVar.b;
        my1 my1Var = this.c;
        vq0 vq0Var = ttVar.a;
        my1Var.getClass();
        ms2 ms2VarA = vq0Var.z.a();
        d26 d26Var = ms2VarA.b;
        if (d26Var != null) {
            d26Var.b(vq0Var);
        }
        my1Var.b(br0Var, vq0Var, n32Var, ms2VarA);
        View viewC = this.a.c(br0Var, fs2Var);
        viewC.setLayoutParams(new ro1(-1, -2));
        return viewC;
    }
}
