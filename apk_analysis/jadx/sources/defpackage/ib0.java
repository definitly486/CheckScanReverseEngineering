package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ib0 implements pz3 {
    public final String a;
    public final String b;

    public ib0(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ib0)) {
            return false;
        }
        ib0 ib0Var = (ib0) obj;
        return aa4.e(this.a, ib0Var.a) && aa4.e(this.b, ib0Var.b);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        return n2.d("BankLandingTextViewModel(title=", this.a, ", textHtml=", this.b, ")");
    }
}
