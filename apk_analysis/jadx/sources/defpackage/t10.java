package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class t10 implements pz3 {
    public final long a;
    public final String b;
    public final String c;

    public t10(long j, String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = j;
        this.b = str;
        this.c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t10)) {
            return false;
        }
        t10 t10Var = (t10) obj;
        return this.a == t10Var.a && aa4.e(this.b, t10Var.b) && aa4.e(this.c, t10Var.c);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.c + this.a;
    }

    public final int hashCode() {
        return this.c.hashCode() + zg.b(Long.hashCode(this.a) * 31, 31, this.b);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Long.valueOf(this.a);
    }

    public final String toString() {
        return kh.c(ah.d(this.a, "BalanceCardManagementViewModel(id=", ", title=", this.b), ", description=", this.c, ")");
    }
}
