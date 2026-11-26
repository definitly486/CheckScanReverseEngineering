package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class qh0 extends uh0 {
    public final String a;
    public final rg0 b;
    public final af0 c;

    public qh0(String str, String str2) {
        this(str, new rg0(str2, 0, null, 0, 14));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qh0)) {
            return false;
        }
        qh0 qh0Var = (qh0) obj;
        return defpackage.aa4.e(this.a, qh0Var.a) && defpackage.aa4.e(this.b, qh0Var.b) && defpackage.aa4.e(this.c, qh0Var.c);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        rg0 rg0Var = this.b;
        int iHashCode2 = (iHashCode + (rg0Var == null ? 0 : rg0Var.hashCode())) * 31;
        af0 af0Var = this.c;
        return iHashCode2 + (af0Var != null ? af0Var.hashCode() : 0);
    }

    public final String toString() {
        return "KeyValue(title=" + this.a + ", subtitle=" + this.b + ", text=" + this.c + ")";
    }

    public qh0(String str, rg0 rg0Var, af0 af0Var) {
        this.a = str;
        this.b = rg0Var;
        this.c = af0Var;
    }

    public qh0(String str, rg0 rg0Var) {
        this.a = str;
        this.b = rg0Var;
        this.c = null;
    }
}
