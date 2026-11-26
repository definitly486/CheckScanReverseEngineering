package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class l81 implements pz3 {
    public final int a;
    public final String b;
    public final String c;
    public final String d;

    public l81(int i, String str, String str2, String str3) {
        str.getClass();
        str3.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l81)) {
            return false;
        }
        l81 l81Var = (l81) obj;
        return this.a == l81Var.a && aa4.e(this.b, l81Var.b) && this.c.equals(l81Var.c) && aa4.e(this.d, l81Var.d);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b;
    }

    public final int hashCode() {
        return this.d.hashCode() + zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }

    public final String toString() {
        return dg.c(ng.e(this.a, "CategoryItemViewModel(id=", ", title=", this.b, ", url="), this.c, ", subtitle=", this.d, ")");
    }
}
