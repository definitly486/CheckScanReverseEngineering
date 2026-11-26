package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class uj3 extends fd2<hu8> {
    public static final List<Integer> e = u96.i(0, 0, 0, 0, 0, 0, 0, 0, 0);
    public static final List<Integer> f = u96.i(2, 1, 0, 2, 1, 0, 2, 1, 0);
    public final int c;
    public final int d;

    /* JADX WARN: Illegal instructions before constructor call */
    public uj3(int i) {
        List<Integer> list = e;
        list.getClass();
        super(iu8.d, list);
        this.c = 1;
        this.d = 9;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof uj3)) {
            return false;
        }
        uj3 uj3Var = (uj3) obj;
        return this.c == uj3Var.c && this.d == uj3Var.d;
    }

    public final int hashCode() {
        return (this.c * 31) + this.d;
    }
}
