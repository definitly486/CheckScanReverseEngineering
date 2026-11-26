package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class sd8 implements pz3 {
    public final String a;
    public final od8 b;

    public sd8(String str, od8 od8Var) {
        od8Var.getClass();
        this.a = str;
        this.b = od8Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sd8)) {
            return false;
        }
        sd8 sd8Var = (sd8) obj;
        return this.a.equals(sd8Var.a) && aa4.e(this.b, sd8Var.b);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        return "SupportChildButtonViewModel(id=" + this.a + ", button=" + this.b + ")";
    }
}
