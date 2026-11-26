package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class f67 {

    @bq7("retailer")
    private final g67 a;

    @bq7("sum")
    private final long b;

    public f67(g67 g67Var, long j) {
        g67Var.getClass();
        this.a = g67Var;
        this.b = j;
    }

    public final e67 a() {
        return new e67(this.a.a(), this.b, 0);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f67)) {
            return false;
        }
        f67 f67Var = (f67) obj;
        return aa4.e(this.a, f67Var.a) && this.b == f67Var.b;
    }

    public final int hashCode() {
        return Long.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "RetailerExpenseResponse(retailer=" + this.a + ", sum=" + this.b + ")";
    }
}
