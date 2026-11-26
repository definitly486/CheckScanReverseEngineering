package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ib1 implements pz3 {
    public final String a;
    public final String b;

    public ib1(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ib1)) {
            return false;
        }
        ib1 ib1Var = (ib1) obj;
        return aa4.e(this.a, ib1Var.a) && aa4.e(this.b, ib1Var.b);
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
        return this.a;
    }

    public final String toString() {
        return n2.d("CheckboxTaskHeaderViewModel(title=", this.a, ", iconUrl=", this.b, ")");
    }
}
