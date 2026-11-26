package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class gw3 {

    @bq7("newValue")
    private final String a;

    @bq7("powercode")
    private final ne6 b;

    public gw3(String str, ne6 ne6Var) {
        this.a = str;
        this.b = ne6Var;
    }

    public final String a() {
        return this.a;
    }

    public final ne6 b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gw3)) {
            return false;
        }
        gw3 gw3Var = (gw3) obj;
        return aa4.e(this.a, gw3Var.a) && aa4.e(this.b, gw3Var.b);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        ne6 ne6Var = this.b;
        return iHashCode + (ne6Var != null ? ne6Var.hashCode() : 0);
    }

    public final String toString() {
        return "HikedFixedResponse(newValue=" + this.a + ", powercode=" + this.b + ")";
    }
}
