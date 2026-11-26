package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class e67 {

    @bq7("retailer")
    private final d67 a;

    @bq7("sum")
    private final long b;
    public int c;

    public e67(d67 d67Var, long j, int i) {
        d67Var.getClass();
        this.a = d67Var;
        this.b = j;
        this.c = i;
    }

    public final d67 a() {
        return this.a;
    }

    public final long b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e67)) {
            return false;
        }
        e67 e67Var = (e67) obj;
        return aa4.e(this.a, e67Var.a) && this.b == e67Var.b && this.c == e67Var.c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + vg.b(this.a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        return "RetailerExpense(retailer=" + this.a + ", sum=" + this.b + ", width=" + this.c + ")";
    }
}
