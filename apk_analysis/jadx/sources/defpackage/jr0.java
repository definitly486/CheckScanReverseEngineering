package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class jr0 implements pz3 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;

    public jr0(String str, String str2, String str3, String str4) {
        str.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jr0)) {
            return false;
        }
        jr0 jr0Var = (jr0) obj;
        return aa4.e(this.a, jr0Var.a) && aa4.e(this.b, jr0Var.b) && aa4.e(this.c, jr0Var.c) && this.d.equals(jr0Var.d);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.a + this.d + this.b + this.c;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.c;
        return this.d.hashCode() + ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        return dg.c(ad2.d("BonusesPromocodeBlockViewModel(title=", this.a, ", buttonText=", this.b, ", placeholderText="), this.c, ", value=", this.d, ")");
    }
}
