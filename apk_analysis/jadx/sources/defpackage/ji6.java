package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ji6 implements pz3 {
    public final int a;
    public final String b;
    public final String c;

    public ji6(int i, String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ji6)) {
            return false;
        }
        ji6 ji6Var = (ji6) obj;
        return this.a == ji6Var.a && aa4.e(this.b, ji6Var.b) && aa4.e(this.c, ji6Var.c);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.c + this.a;
    }

    public final int hashCode() {
        return this.c.hashCode() + zg.b(Integer.hashCode(this.a) * 31, 31, this.b);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }

    public final String toString() {
        return me0.d(ng.e(this.a, "ProductShopViewModel(id=", ", title=", this.b, ", logo="), this.c, ")");
    }
}
