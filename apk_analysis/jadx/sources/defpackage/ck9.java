package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ck9 implements hk9 {
    public final int a;
    public final String b;
    public final String c;
    public final wi9.e d;

    public ck9(int i, String str, String str2, wi9.e eVar) {
        str.getClass();
        str2.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = eVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ck9)) {
            return false;
        }
        ck9 ck9Var = (ck9) obj;
        return this.a == ck9Var.a && aa4.e(this.b, ck9Var.b) && aa4.e(this.c, ck9Var.c) && this.d.equals(ck9Var.d);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.c + this.d;
    }

    public final int hashCode() {
        return this.d.a.hashCode() + zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a);
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "WithdrawalRegisterViewModel(id=", ", title=", this.b, ", logoUrl=");
        sbE.append(this.c);
        sbE.append(", event=");
        sbE.append(this.d);
        sbE.append(")");
        return sbE.toString();
    }
}
