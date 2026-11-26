package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class cn8 implements pz3 {
    public final String a;
    public final String b;
    public final boolean c;
    public final boolean d;

    public cn8(String str, String str2, boolean z, boolean z2) {
        str.getClass();
        this.a = str;
        this.b = str2;
        this.c = z;
        this.d = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cn8)) {
            return false;
        }
        cn8 cn8Var = (cn8) obj;
        return aa4.e(this.a, cn8Var.a) && aa4.e(this.b, cn8Var.b) && this.c == cn8Var.c && this.d == cn8Var.d;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.a + this.b + this.c + this.d;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return Boolean.hashCode(this.d) + tg.c((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.c);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("TaskDisclaimerViewModel(text=", this.a, ", hint=", this.b, ", smallText=");
        sbD.append(this.c);
        sbD.append(", centerAlignment=");
        sbD.append(this.d);
        sbD.append(")");
        return sbD.toString();
    }
}
