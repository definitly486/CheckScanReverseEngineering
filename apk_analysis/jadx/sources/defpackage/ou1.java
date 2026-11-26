package defpackage;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: loaded from: classes3.dex */
public final class ou1<T> extends f06<T> implements Serializable {
    public final Comparator<? super T>[] b;

    public ou1(lw0 lw0Var, lw0 lw0Var2) {
        this.b = new Comparator[]{lw0Var, lw0Var2};
    }

    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        int i = 0;
        while (true) {
            Comparator<? super T>[] comparatorArr = this.b;
            if (i >= comparatorArr.length) {
                return 0;
            }
            int iCompare = comparatorArr[i].compare(t, t2);
            if (iCompare != 0) {
                return iCompare;
            }
            i++;
        }
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ou1) {
            return Arrays.equals(this.b, ((ou1) obj).b);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b);
    }

    public final String toString() {
        return me0.d(new StringBuilder("Ordering.compound("), Arrays.toString(this.b), ")");
    }
}
