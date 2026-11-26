package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class hw2 {

    @bq7("email")
    private final String a;

    public hw2(String str) {
        str.getClass();
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof hw2) && aa4.e(this.a, ((hw2) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.c("EmailRequestBody(email=", this.a, ")");
    }
}
