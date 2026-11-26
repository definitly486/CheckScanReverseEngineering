package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class hz8 {

    @bq7("option_id")
    private final int a;

    @bq7("program_id")
    private final int b;

    public hz8(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hz8)) {
            return false;
        }
        hz8 hz8Var = (hz8) obj;
        return this.a == hz8Var.a && this.b == hz8Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return ln.c(this.a, this.b, "TransferCashBackToMetroDiscount(id=", ", programId=", ")");
    }
}
