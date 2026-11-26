package defpackage;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class k39<A, B, C> implements Serializable {
    public final A b;
    public final B c;
    public final C d;

    public k39(A a, B b, C c) {
        this.b = a;
        this.c = b;
        this.d = c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k39)) {
            return false;
        }
        k39 k39Var = (k39) obj;
        return aa4.e(this.b, k39Var.b) && aa4.e(this.c, k39Var.c) && aa4.e(this.d, k39Var.d);
    }

    public final int hashCode() {
        A a = this.b;
        int iHashCode = (a == null ? 0 : a.hashCode()) * 31;
        B b = this.c;
        int iHashCode2 = (iHashCode + (b == null ? 0 : b.hashCode())) * 31;
        C c = this.d;
        return iHashCode2 + (c != null ? c.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("(");
        sb.append(this.b);
        sb.append(", ");
        sb.append(this.c);
        sb.append(", ");
        return vg.d(sb, this.d, ')');
    }
}
