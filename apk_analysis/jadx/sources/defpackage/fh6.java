package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class fh6 implements pz3 {
    public final String a;
    public final String b;
    public final int c;

    public fh6(String str, String str2, int i) {
        this.a = str;
        this.b = str2;
        this.c = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fh6)) {
            return false;
        }
        fh6 fh6Var = (fh6) obj;
        return this.a.equals(fh6Var.a) && this.b.equals(fh6Var.b) && this.c == fh6Var.c;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.a + this.b + this.c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + zg.b(this.a.hashCode() * 31, 31, this.b);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return "cashback_".concat(this.a);
    }

    public final String toString() {
        return l2.e(ad2.d("ProductCashbackViewModel(title=", this.a, ", subtitle=", this.b, ", progress="), ")", this.c);
    }
}
