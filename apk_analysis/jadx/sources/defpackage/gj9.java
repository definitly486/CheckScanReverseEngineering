package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class gj9 implements pz3 {
    public final Object a;
    public final String b;
    public final String c;
    public final String d;
    public final wi9 e;

    public gj9(Object obj, String str, String str2, String str3, wi9 wi9Var) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        wi9Var.getClass();
        this.a = obj;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = wi9Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gj9)) {
            return false;
        }
        gj9 gj9Var = (gj9) obj;
        return this.a.equals(gj9Var.a) && aa4.e(this.b, gj9Var.b) && aa4.e(this.c, gj9Var.c) && aa4.e(this.d, gj9Var.d) && aa4.e(this.e, gj9Var.e);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return cg.d(this.b, this.c, this.d);
    }

    public final int hashCode() {
        return this.e.hashCode() + zg.b(zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("WithdrawalCardInfoViewModel(id=");
        sb.append(this.a);
        sb.append(", logoUrl=");
        sb.append(this.b);
        sb.append(", title=");
        kv2.c(sb, this.c, ", description=", this.d, ", withdrawalEvent=");
        sb.append(this.e);
        sb.append(")");
        return sb.toString();
    }
}
