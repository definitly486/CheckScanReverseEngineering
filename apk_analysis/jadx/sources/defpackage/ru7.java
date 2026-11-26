package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ru7 implements pz3 {
    public final String a;
    public final String b;

    public ru7(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ru7)) {
            return false;
        }
        ru7 ru7Var = (ru7) obj;
        return aa4.e(this.a, ru7Var.a) && aa4.e(this.b, ru7Var.b);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return ni0.c(this.a, this.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return bj.c("shop_header_", this.a);
    }

    public final String toString() {
        return n2.d("ShopHeaderViewModel(title=", this.a, ", iconUrl=", this.b, ")");
    }
}
