package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class j09 implements pz3 {
    public final double a;
    public final double b;
    public final double c;
    public final double d;
    public final boolean e;
    public final String f;

    public j09(double d, double d2, double d3, double d4, boolean z, String str) {
        this.a = d;
        this.b = d2;
        this.c = d3;
        this.d = d4;
        this.e = z;
        this.f = str;
    }

    public static j09 d(j09 j09Var, double d, boolean z, String str, int i) {
        if ((i & 1) != 0) {
            d = j09Var.a;
        }
        return new j09(d, j09Var.b, j09Var.c, j09Var.d, z, str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j09)) {
            return false;
        }
        j09 j09Var = (j09) obj;
        return Double.compare(this.a, j09Var.a) == 0 && Double.compare(this.b, j09Var.b) == 0 && Double.compare(this.c, j09Var.c) == 0 && Double.compare(this.d, j09Var.d) == 0 && this.e == j09Var.e && aa4.e(this.f, j09Var.f);
    }

    @Override // defpackage.pz3
    public final Object f() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.a);
        sb.append(this.e);
        return sb.toString();
    }

    public final int hashCode() {
        int iC = tg.c((Double.hashCode(this.d) + ((Double.hashCode(this.c) + ((Double.hashCode(this.b) + (Double.hashCode(this.a) * 31)) * 31)) * 31)) * 31, 31, this.e);
        String str = this.f;
        return iC + (str == null ? 0 : str.hashCode());
    }

    @Override // defpackage.pz3
    public final Object id() {
        return "amount";
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TransferSBPAmountInputViewModel(amount=");
        sb.append(this.a);
        sb.append(", availableAmount=");
        sb.append(this.b);
        sb.append(", minAmount=");
        sb.append(this.c);
        sb.append(", maxAmount=");
        sb.append(this.d);
        sb.append(", isError=");
        sb.append(this.e);
        return kh.c(sb, ", errorMessage=", this.f, ")");
    }
}
