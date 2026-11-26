package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class qi6 implements pz3 {
    public final String a;
    public final String b;

    public qi6(String str, String str2) {
        str2.getClass();
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qi6)) {
            return false;
        }
        qi6 qi6Var = (qi6) obj;
        return aa4.e(this.a, qi6Var.a) && aa4.e(this.b, qi6Var.b);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return ni0.c(this.a, this.b);
    }

    public final int hashCode() {
        String str = this.a;
        return this.b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return bj.c("textblock_", this.a);
    }

    public final String toString() {
        return n2.d("ProductTextBlockViewModel(title=", this.a, ", htmlText=", this.b, ")");
    }
}
