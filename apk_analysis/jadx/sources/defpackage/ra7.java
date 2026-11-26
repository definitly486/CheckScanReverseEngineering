package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ra7 implements y97 {

    @bq7("eventTimestamp")
    private final String a;

    public ra7(String str) {
        this.a = str;
        na7 na7Var = na7.UpdateBonuses;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ra7) && aa4.e(this.a, ((ra7) obj).a);
    }

    public final int hashCode() {
        String str = this.a;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final String toString() {
        return me0.c("SSEUpdateTasks(eventTimestamp=", this.a, ")");
    }
}
