package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class xw3 {

    @bq7("empty")
    private final boolean a;

    @bq7("sorted")
    private final boolean b;

    @bq7("unsorted")
    private final boolean c;

    public xw3(boolean z, boolean z2, boolean z3) {
        this.a = z;
        this.b = z2;
        this.c = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xw3)) {
            return false;
        }
        xw3 xw3Var = (xw3) obj;
        return this.a == xw3Var.a && this.b == xw3Var.b && this.c == xw3Var.c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.c) + tg.c(Boolean.hashCode(this.a) * 31, 31, this.b);
    }

    public final String toString() {
        boolean z = this.a;
        boolean z2 = this.b;
        boolean z3 = this.c;
        StringBuilder sb = new StringBuilder("HotItemSortResponse(empty=");
        sb.append(z);
        sb.append(", sorted=");
        sb.append(z2);
        sb.append(", unsorted=");
        return dh.e(sb, z3, ")");
    }
}
