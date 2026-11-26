package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class nq6 {

    @bq7("url")
    private final String a;

    public nq6(String str) {
        this.a = str;
    }

    public final String a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof nq6) && aa4.e(this.a, ((nq6) obj).a);
    }

    public final int hashCode() {
        String str = this.a;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final String toString() {
        return me0.c("PromocodeTaskActivateResponse(url=", this.a, ")");
    }
}
