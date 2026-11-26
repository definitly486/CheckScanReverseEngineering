package defpackage;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class b36<A, B> implements Serializable {
    public final A b;
    public final B c;

    public b36(A a, B b) {
        this.b = a;
        this.c = b;
    }

    public static b36 a(b36 b36Var, Integer num, Object obj, int i) {
        if ((i & 1) != 0) {
            num = b36Var.b;
        }
        if ((i & 2) != 0) {
            obj = b36Var.c;
        }
        return new b36(num, obj);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b36)) {
            return false;
        }
        b36 b36Var = (b36) obj;
        return aa4.e(this.b, b36Var.b) && aa4.e(this.c, b36Var.c);
    }

    public final int hashCode() {
        A a = this.b;
        int iHashCode = (a == null ? 0 : a.hashCode()) * 31;
        B b = this.c;
        return iHashCode + (b != null ? b.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("(");
        sb.append(this.b);
        sb.append(", ");
        return vg.d(sb, this.c, ')');
    }
}
