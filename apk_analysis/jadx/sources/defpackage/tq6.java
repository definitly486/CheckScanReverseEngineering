package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class tq6 {
    public final int a;
    public final List<pz3> b;
    public final b06 c;

    /* JADX WARN: Multi-variable type inference failed */
    public tq6(int i, List<? extends pz3> list, b06 b06Var) {
        this.a = i;
        this.b = list;
        this.c = b06Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof tq6)) {
            return false;
        }
        tq6 tq6Var = (tq6) obj;
        return this.a == tq6Var.a && this.b.equals(tq6Var.b) && aa4.e(this.c, tq6Var.c);
    }

    public final int hashCode() {
        int iB = e2.b(this.b, Integer.hashCode(this.a) * 31, 31);
        b06 b06Var = this.c;
        return iB + (b06Var == null ? 0 : b06Var.hashCode());
    }

    public final String toString() {
        return "PromocodeTaskDetails(promocodeId=" + this.a + ", items=" + this.b + ", ordInfo=" + this.c + ")";
    }
}
