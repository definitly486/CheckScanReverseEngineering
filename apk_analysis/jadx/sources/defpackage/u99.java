package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class u99 {

    @bq7("user_identifier")
    private final String a;

    public u99(String str) {
        str.getClass();
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof u99) && aa4.e(this.a, ((u99) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.c("UserIdentifier(phone=", this.a, ")");
    }
}
