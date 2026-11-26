package yads;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import defpackage.yr9;

/* JADX INFO: loaded from: classes6.dex */
public abstract class cq implements og6 {
    public final ViewGroup a;
    public final z83 b;
    public final y83 c;
    public final SparseArray d = new SparseArray();
    public int e = 0;
    public float f = 0.0f;

    public cq(ViewGroup viewGroup, z83 z83Var, y83 y83Var) {
        this.a = viewGroup;
        this.b = z83Var;
        this.c = y83Var;
    }

    @Override // yads.og6
    public int a(int i, int i2) {
        nu5 nu5Var = (nu5) this.d.get(i);
        if (nu5Var == null) {
            int iA = ((oq) ((defpackage.jv) this.c).c).a();
            if (iA == 0) {
                return 0;
            }
            nu5 nu5Var2 = new nu5(iA, new yr9(this, View.MeasureSpec.getSize(i), i2));
            this.d.put(i, nu5Var2);
            nu5Var = nu5Var2;
        }
        int iA2 = a(nu5Var, this.e, this.f);
        int i3 = rv3.a;
        vj5[] vj5VarArr = vj5.b;
        return iA2;
    }

    public abstract int a(nu5 nu5Var, int i, float f);

    public final int a(int i, int i2, int i3) {
        z83 z83Var = this.b;
        return ((oq) ((defpackage.wo0) z83Var).b).a(this.a, i, i2, i3);
    }
}
