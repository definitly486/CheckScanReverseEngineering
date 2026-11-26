package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class fw3 {

    @bq7("newValue")
    private final String a;

    @bq7("powercode")
    private final me6 b;

    public fw3(String str, me6 me6Var) {
        this.a = str;
        this.b = me6Var;
    }

    public final String a() {
        return this.a;
    }

    public final me6 b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fw3)) {
            return false;
        }
        fw3 fw3Var = (fw3) obj;
        return aa4.e(this.a, fw3Var.a) && aa4.e(this.b, fw3Var.b);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        me6 me6Var = this.b;
        return iHashCode + (me6Var != null ? me6Var.hashCode() : 0);
    }

    public final String toString() {
        return "HikedFixedResponse(newValue=" + this.a + ", powercode=" + this.b + ")";
    }
}
