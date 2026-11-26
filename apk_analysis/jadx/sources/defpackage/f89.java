package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class f89 {

    @bq7("email")
    private final String a;

    public f89(String str) {
        str.getClass();
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof f89) && aa4.e(this.a, ((f89) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.c("UpdateUsername(email=", this.a, ")");
    }
}
