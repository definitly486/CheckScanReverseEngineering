package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class dw3 {

    @bq7("newValue")
    private final String a;

    @bq7("powercode")
    private final le6 b;

    public dw3(String str, le6 le6Var) {
        this.a = str;
        this.b = le6Var;
    }

    public final String a() {
        return this.a;
    }

    public final le6 b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dw3)) {
            return false;
        }
        dw3 dw3Var = (dw3) obj;
        return aa4.e(this.a, dw3Var.a) && aa4.e(this.b, dw3Var.b);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        le6 le6Var = this.b;
        return iHashCode + (le6Var != null ? le6Var.hashCode() : 0);
    }

    public final String toString() {
        return "Hike(newValue=" + this.a + ", powercode=" + this.b + ")";
    }
}
