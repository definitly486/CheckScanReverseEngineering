package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class ws5 {

    @bq7("results")
    private final List<us5> a;

    @bq7("qrInfoRequest")
    private final hv6 b;

    public ws5(List<us5> list, hv6 hv6Var) {
        list.getClass();
        hv6Var.getClass();
        this.a = list;
        this.b = hv6Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ws5)) {
            return false;
        }
        ws5 ws5Var = (ws5) obj;
        return aa4.e(this.a, ws5Var.a) && aa4.e(this.b, ws5Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "OfdUrlResults(results=" + this.a + ", qrInfoRequest=" + this.b + ")";
    }
}
