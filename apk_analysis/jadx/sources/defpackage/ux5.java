package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ux5 implements pz3 {
    public final String a;
    public final String b;

    public ux5(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ux5)) {
            return false;
        }
        ux5 ux5Var = (ux5) obj;
        return this.a.equals(ux5Var.a) && this.b.equals(ux5Var.b);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return me0.c(this.a, " ", this.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a.concat(this.b);
    }

    public final String toString() {
        return n2.d("OnlineShopTermViewModel(title=", this.a, ", sumCashBack=", this.b, ")");
    }
}
