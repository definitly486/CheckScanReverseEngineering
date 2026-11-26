package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class pv0 implements pz3 {
    public final String a;
    public final String b;
    public final String c;

    public pv0(String str, String str2, String str3) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pv0)) {
            return false;
        }
        pv0 pv0Var = (pv0) obj;
        return aa4.e(this.a, pv0Var.a) && aa4.e(this.b, pv0Var.b) && this.c.equals(pv0Var.c);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b;
    }

    public final int hashCode() {
        return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.b;
    }

    public final String toString() {
        return me0.d(ad2.d("ButtonItemViewModel(imgLogo=", this.a, ", title=", this.b, ", deeplink="), this.c, ")");
    }
}
