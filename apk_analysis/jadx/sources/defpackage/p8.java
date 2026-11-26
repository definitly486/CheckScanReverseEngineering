package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class p8 {
    public final int a;
    public final hv6 b;
    public final iv6 c;
    public final gf9 d;

    public p8(int i, hv6 hv6Var, iv6 iv6Var, gf9 gf9Var) {
        hv6Var.getClass();
        this.a = i;
        this.b = hv6Var;
        this.c = iv6Var;
        this.d = gf9Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p8)) {
            return false;
        }
        p8 p8Var = (p8) obj;
        return this.a == p8Var.a && aa4.e(this.b, p8Var.b) && aa4.e(this.c, p8Var.c) && this.d.equals(p8Var.d);
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (Integer.hashCode(this.a) * 31)) * 31;
        iv6 iv6Var = this.c;
        return this.d.hashCode() + ((iHashCode + (iv6Var == null ? 0 : iv6Var.hashCode())) * 31);
    }

    public final String toString() {
        return "AddChequeModel(id=" + this.a + ", qrInfoRequestStr=" + this.b + ", qrInfoResponseStr=" + this.c + ", wqReceipt=" + this.d + ")";
    }
}
