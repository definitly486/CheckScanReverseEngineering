package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class sa7 implements y97 {

    @bq7("eventTimestamp")
    private final String a;

    public sa7(String str) {
        this.a = str;
        na7 na7Var = na7.UpdateBonuses;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof sa7) && aa4.e(this.a, ((sa7) obj).a);
    }

    public final int hashCode() {
        String str = this.a;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final String toString() {
        return me0.c("SSEUpdateTransferPoints(eventTimestamp=", this.a, ")");
    }
}
