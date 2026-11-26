package yads;

import android.util.SparseArray;
import android.view.ViewGroup;
import defpackage.yr9;

/* JADX INFO: loaded from: classes6.dex */
public final class qx3 extends cq {
    public qx3(ViewGroup viewGroup, z83 z83Var, y83 y83Var) {
        super(viewGroup, z83Var, y83Var);
    }

    @Override // yads.og6
    public final boolean a(int i, float f) {
        if (this.d.size() != 0) {
            if (i == 0 || (i == 1 && f <= 0.0f)) {
                this.d.size();
                SparseArray sparseArray = this.d;
                nu5 nu5Var = (nu5) sparseArray.valueAt(sparseArray.size() - 1);
                int iA = nu5Var.b;
                if (iA < 0) {
                    iA = ((yr9) nu5Var.e).a(0);
                    nu5Var.b = iA;
                }
                if (iA != nu5Var.a()) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // yads.cq
    public final int a(nu5 nu5Var, int i, float f) {
        if (i > 0) {
            return nu5Var.a();
        }
        if (f < 0.01f) {
            int i2 = nu5Var.b;
            if (i2 >= 0) {
                return i2;
            }
            int iA = ((yr9) nu5Var.e).a(0);
            nu5Var.b = iA;
            return iA;
        }
        int iA2 = nu5Var.b;
        if (iA2 < 0) {
            iA2 = ((yr9) nu5Var.e).a(0);
            nu5Var.b = iA2;
        }
        return Math.round(((nu5Var.a() - iA2) * f) + iA2);
    }
}
