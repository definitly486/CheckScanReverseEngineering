package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ez8 {

    @bq7("cardId")
    private final long a;

    @bq7("sum")
    private final int b;

    public ez8(long j, int i) {
        this.a = j;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ez8)) {
            return false;
        }
        ez8 ez8Var = (ez8) obj;
        return this.a == ez8Var.a && this.b == ez8Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (Long.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "TransferCardRequest(cardId=" + this.a + ", sumInKopeikas=" + this.b + ")";
    }
}
