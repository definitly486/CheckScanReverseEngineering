package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class bf1 {

    @bq7("infoType")
    private final md1 a;

    @bq7("text")
    private final String b;

    public bf1(md1 md1Var, String str) {
        md1Var.getClass();
        str.getClass();
        this.a = md1Var;
        this.b = str;
    }

    public static bf1 a(bf1 bf1Var, String str) {
        md1 md1Var = bf1Var.a;
        md1Var.getClass();
        return new bf1(md1Var, str);
    }

    public final String b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bf1)) {
            return false;
        }
        bf1 bf1Var = (bf1) obj;
        return this.a == bf1Var.a && aa4.e(this.b, bf1Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "ChequeRejectResponse(infoType=" + this.a + ", text=" + this.b + ")";
    }
}
