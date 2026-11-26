package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class kv4 {

    @bq7("logoUrl")
    private final String a;

    public kv4(String str) {
        str.getClass();
        this.a = str;
    }

    public final String a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof kv4) && aa4.e(this.a, ((kv4) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.c("LogoBlockResponse(logoUrl=", this.a, ")");
    }
}
