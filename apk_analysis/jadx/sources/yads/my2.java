package yads;

import android.util.SparseBooleanArray;

/* JADX INFO: loaded from: classes6.dex */
public final class my2 {
    public final SparseBooleanArray a;

    public my2(SparseBooleanArray sparseBooleanArray) {
        this.a = sparseBooleanArray;
    }

    public final int a(int i) {
        zj.a(i, this.a.size());
        return this.a.keyAt(i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof my2)) {
            return false;
        }
        my2 my2Var = (my2) obj;
        int i = u56.a;
        SparseBooleanArray sparseBooleanArray = this.a;
        if (i >= 24) {
            return sparseBooleanArray.equals(my2Var.a);
        }
        if (sparseBooleanArray.size() != my2Var.a.size()) {
            return false;
        }
        for (int i2 = 0; i2 < this.a.size(); i2++) {
            if (a(i2) != my2Var.a(i2)) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int i = u56.a;
        SparseBooleanArray sparseBooleanArray = this.a;
        if (i >= 24) {
            return sparseBooleanArray.hashCode();
        }
        int size = sparseBooleanArray.size();
        for (int i2 = 0; i2 < this.a.size(); i2++) {
            size = (size * 31) + a(i2);
        }
        return size;
    }
}
