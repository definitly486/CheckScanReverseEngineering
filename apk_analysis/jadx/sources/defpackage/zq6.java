package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class zq6 implements pz3 {
    public final String a;
    public final String b;

    public zq6(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zq6)) {
            return false;
        }
        zq6 zq6Var = (zq6) obj;
        return aa4.e(this.a, zq6Var.a) && aa4.e(this.b, zq6Var.b);
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
        return n2.d("PromocodeTaskHeaderViewModel(title=", this.a, ", iconUrl=", this.b, ")");
    }
}
