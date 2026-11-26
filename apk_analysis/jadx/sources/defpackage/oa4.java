package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class oa4 extends fn5 {
    public final int a;
    public final String b;
    public final String c;
    public final int d;

    public oa4(int i, int i2, String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof oa4)) {
            return false;
        }
        oa4 oa4Var = (oa4) obj;
        return this.a == oa4Var.a && aa4.e(this.b, oa4Var.b) && aa4.e(this.c, oa4Var.c) && this.d == oa4Var.d;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.d) + zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "ItemChequeViewModel(id=", ", shopTitle=", this.b, ", purchaseDate=");
        sbE.append(this.c);
        sbE.append(", sum=");
        sbE.append(this.d);
        sbE.append(")");
        return sbE.toString();
    }
}
