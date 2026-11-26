package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class d81 {

    @bq7("category")
    private p81 a;

    @bq7("sum")
    private long b;

    public d81(p81 p81Var, long j) {
        p81Var.getClass();
        this.a = p81Var;
        this.b = j;
    }

    public final c81 a() {
        return new c81(this.a.a(), this.b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d81)) {
            return false;
        }
        d81 d81Var = (d81) obj;
        return aa4.e(this.a, d81Var.a) && this.b == d81Var.b;
    }

    public final int hashCode() {
        return Long.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "CategoryExpenseResponse(category=" + this.a + ", sum=" + this.b + ")";
    }
}
