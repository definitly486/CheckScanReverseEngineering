package yads;

import android.view.ViewGroup;

/* JADX INFO: loaded from: classes6.dex */
public final class sm2 extends cq {
    public sm2(ViewGroup viewGroup, z83 z83Var, y83 y83Var) {
        super(viewGroup, z83Var, y83Var);
    }

    @Override // yads.cq
    public final int a(nu5 nu5Var, int i, float f) {
        if (f < 0.01f) {
            return nu5Var.a(i);
        }
        int iA = nu5Var.a(i);
        return Math.round(((nu5Var.a(i + 1) - iA) * f) + iA);
    }

    @Override // yads.og6
    public final boolean a(int i, float f) {
        return true;
    }

    @Override // yads.cq, yads.og6
    public final int a(int i, int i2) {
        int i3 = rv3.a;
        vj5[] vj5VarArr = vj5.b;
        this.d.clear();
        return super.a(i, i2);
    }
}
