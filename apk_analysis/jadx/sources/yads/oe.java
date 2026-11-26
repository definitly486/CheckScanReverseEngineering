package yads;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes6.dex */
public final class oe {
    public final my2 a;
    public final SparseArray b;

    public oe(my2 my2Var, SparseArray sparseArray) {
        this.a = my2Var;
        SparseArray sparseArray2 = new SparseArray(my2Var.a.size());
        for (int i = 0; i < my2Var.a.size(); i++) {
            int iA = my2Var.a(i);
            ne neVar = (ne) sparseArray.get(iA);
            neVar.getClass();
            sparseArray2.append(iA, neVar);
        }
        this.b = sparseArray2;
    }

    public final boolean a(int i) {
        return this.a.a.get(i);
    }
}
