package yads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class mm0 extends o06 {
    public static final mm0 R = new mm0(new lm0());
    public final boolean C;
    public final boolean D;
    public final boolean E;
    public final boolean F;
    public final boolean G;
    public final boolean H;
    public final boolean I;
    public final boolean J;
    public final boolean K;
    public final boolean L;
    public final boolean M;
    public final boolean N;
    public final boolean O;
    public final SparseArray P;
    public final SparseBooleanArray Q;

    public mm0(lm0 lm0Var) {
        super(lm0Var);
        this.C = lm0Var.A;
        this.D = lm0Var.B;
        this.E = lm0Var.C;
        this.F = lm0Var.D;
        this.G = lm0Var.E;
        this.H = lm0Var.F;
        this.I = lm0Var.G;
        this.J = lm0Var.H;
        this.K = lm0Var.I;
        this.L = lm0Var.J;
        this.M = lm0Var.K;
        this.N = lm0Var.L;
        this.O = lm0Var.M;
        this.P = lm0Var.N;
        this.Q = lm0Var.O;
    }

    @Override // yads.o06
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && mm0.class == obj.getClass()) {
            mm0 mm0Var = (mm0) obj;
            if (super.equals(mm0Var) && this.C == mm0Var.C && this.D == mm0Var.D && this.E == mm0Var.E && this.F == mm0Var.F && this.G == mm0Var.G && this.H == mm0Var.H && this.I == mm0Var.I && this.J == mm0Var.J && this.K == mm0Var.K && this.L == mm0Var.L && this.M == mm0Var.M && this.N == mm0Var.N && this.O == mm0Var.O) {
                SparseBooleanArray sparseBooleanArray = this.Q;
                SparseBooleanArray sparseBooleanArray2 = mm0Var.Q;
                int size = sparseBooleanArray.size();
                if (sparseBooleanArray2.size() == size) {
                    for (int i = 0; i < size; i++) {
                        if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i)) >= 0) {
                        }
                    }
                    SparseArray sparseArray = this.P;
                    SparseArray sparseArray2 = mm0Var.P;
                    int size2 = sparseArray.size();
                    if (sparseArray2.size() == size2) {
                        for (int i2 = 0; i2 < size2; i2++) {
                            int iIndexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i2));
                            if (iIndexOfKey >= 0) {
                                Map map = (Map) sparseArray.valueAt(i2);
                                Map map2 = (Map) sparseArray2.valueAt(iIndexOfKey);
                                if (map2.size() == map.size()) {
                                    for (Map.Entry entry : map.entrySet()) {
                                        g06 g06Var = (g06) entry.getKey();
                                        if (!map2.containsKey(g06Var) || !u56.a(entry.getValue(), map2.get(g06Var))) {
                                        }
                                    }
                                }
                            }
                        }
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // yads.o06
    public final int hashCode() {
        return ((((((((((((((((((((((((((super.hashCode() + 31) * 31) + (this.C ? 1 : 0)) * 31) + (this.D ? 1 : 0)) * 31) + (this.E ? 1 : 0)) * 31) + (this.F ? 1 : 0)) * 31) + (this.G ? 1 : 0)) * 31) + (this.H ? 1 : 0)) * 31) + (this.I ? 1 : 0)) * 31) + (this.J ? 1 : 0)) * 31) + (this.K ? 1 : 0)) * 31) + (this.L ? 1 : 0)) * 31) + (this.M ? 1 : 0)) * 31) + (this.N ? 1 : 0)) * 31) + (this.O ? 1 : 0);
    }
}
