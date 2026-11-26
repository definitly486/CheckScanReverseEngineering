package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class c81 {

    @bq7("category")
    private p71 a;

    @bq7("sum")
    private long b;

    public c81(p71 p71Var, long j) {
        p71Var.getClass();
        this.a = p71Var;
        this.b = j;
    }

    public final p71 a() {
        return this.a;
    }

    public final long b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c81)) {
            return false;
        }
        c81 c81Var = (c81) obj;
        return aa4.e(this.a, c81Var.a) && this.b == c81Var.b;
    }

    public final int hashCode() {
        return Long.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "CategoryExpense(category=" + this.a + ", sum=" + this.b + ")";
    }
}
