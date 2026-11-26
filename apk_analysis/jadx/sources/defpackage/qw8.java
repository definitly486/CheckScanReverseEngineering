package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class qw8 implements pz3 {
    public final int a;
    public final String b;
    public final String c;
    public final sq0 d;

    public qw8(int i, String str, String str2, sq0 sq0Var) {
        sq0Var.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = sq0Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qw8)) {
            return false;
        }
        qw8 qw8Var = (qw8) obj;
        return this.a == qw8Var.a && this.b.equals(qw8Var.b) && this.c.equals(qw8Var.c) && this.d == qw8Var.d;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.c;
    }

    public final int hashCode() {
        return this.d.hashCode() + zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.b;
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "TitleWithButtonViewModel(id=", ", title=", this.b, ", buttonTitle=");
        sbE.append(this.c);
        sbE.append(", direction=");
        sbE.append(this.d);
        sbE.append(")");
        return sbE.toString();
    }
}
