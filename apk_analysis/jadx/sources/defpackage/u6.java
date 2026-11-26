package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class u6 {

    @bq7("text")
    private final String a;

    public u6(String str) {
        str.getClass();
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof u6) && aa4.e(this.a, ((u6) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.c("ActivationBlockResponse(text=", this.a, ")");
    }
}
