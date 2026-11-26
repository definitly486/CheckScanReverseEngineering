package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class io6 implements lp6 {
    public final int a;
    public final String b;
    public final String c;

    public io6(int i, String str, String str2) {
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
        if (!(obj instanceof io6)) {
            return false;
        }
        io6 io6Var = (io6) obj;
        return this.a == io6Var.a && aa4.e(this.b, io6Var.b) && aa4.e(this.c, io6Var.c);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.c + this.b + this.a;
    }

    public final int hashCode() {
        return this.c.hashCode() + zg.b(Integer.hashCode(this.a) * 31, 31, this.b);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }

    public final String toString() {
        return me0.d(ng.e(this.a, "PromoSelectCardButtonViewModel(id=", ", title=", this.b, ", deeplink="), this.c, ")");
    }
}
