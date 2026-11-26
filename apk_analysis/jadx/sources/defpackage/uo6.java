package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class uo6 implements lp6 {
    public final String a;
    public final String b;
    public final String c;

    public uo6(String str, String str2, String str3) {
        x7.b(str, str2, str3);
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof uo6)) {
            return false;
        }
        uo6 uo6Var = (uo6) obj;
        return aa4.e(this.a, uo6Var.a) && aa4.e(this.b, uo6Var.b) && aa4.e(this.c, uo6Var.c);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return cg.d(this.a, this.b, this.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return ni0.c(this.a, this.c);
    }

    public final String toString() {
        return me0.d(ad2.d("PromoSelectCardHeaderViewModel(title=", this.a, ", description=", this.b, ", logoUrl="), this.c, ")");
    }
}
