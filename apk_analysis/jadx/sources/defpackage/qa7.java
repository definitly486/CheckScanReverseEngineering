package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class qa7 implements y97 {

    @bq7("eventTimestamp")
    private final String a;

    public qa7(String str) {
        this.a = str;
        na7 na7Var = na7.UpdateBonuses;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof qa7) && aa4.e(this.a, ((qa7) obj).a);
    }

    public final int hashCode() {
        String str = this.a;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final String toString() {
        return me0.c("SSEUpdateProfileIcon(eventTimestamp=", this.a, ")");
    }
}
