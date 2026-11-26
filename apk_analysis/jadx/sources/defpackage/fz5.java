package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class fz5 {

    @bq7("date")
    private final String a;

    @bq7("operations")
    private final List<ry5> b;

    public fz5(String str, List<ry5> list) {
        str.getClass();
        list.getClass();
        this.a = str;
        this.b = list;
    }

    public final String a() {
        return this.a;
    }

    public final List<ry5> b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fz5)) {
            return false;
        }
        fz5 fz5Var = (fz5) obj;
        return aa4.e(this.a, fz5Var.a) && aa4.e(this.b, fz5Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "OperationResponse(date=" + this.a + ", operations=" + this.b + ")";
    }
}
