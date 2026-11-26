package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class xm1 {

    @bq7("code")
    private final String a;

    @bq7("confirmType")
    private final cw1 b;

    @bq7("objType")
    private final qc9 c;

    public xm1(String str, cw1 cw1Var, qc9 qc9Var) {
        str.getClass();
        cw1Var.getClass();
        qc9Var.getClass();
        this.a = str;
        this.b = cw1Var;
        this.c = qc9Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xm1)) {
            return false;
        }
        xm1 xm1Var = (xm1) obj;
        return aa4.e(this.a, xm1Var.a) && this.b == xm1Var.b && this.c == xm1Var.c;
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "CodeRequest(code=" + this.a + ", confirmType=" + this.b + ", objType=" + this.c + ")";
    }
}
