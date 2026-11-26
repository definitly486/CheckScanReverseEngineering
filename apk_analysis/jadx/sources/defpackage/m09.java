package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class m09 implements pz3 {
    public final String a;
    public final String b;
    public final String c;
    public final boolean d;

    public m09(String str, String str2, String str3, boolean z) {
        x7.b(str, str2, str3);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = z;
    }

    public static m09 d(m09 m09Var, boolean z) {
        String str = m09Var.a;
        String str2 = m09Var.b;
        String str3 = m09Var.c;
        str.getClass();
        str2.getClass();
        str3.getClass();
        return new m09(str, str2, str3, z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m09)) {
            return false;
        }
        m09 m09Var = (m09) obj;
        return aa4.e(this.a, m09Var.a) && aa4.e(this.b, m09Var.b) && aa4.e(this.c, m09Var.c) && this.d == m09Var.d;
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this.b + this.c + this.a + this.d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return this.a;
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("TransferSBPBankViewModel(id=", this.a, ", title=", this.b, ", logoUrl=");
        sbD.append(this.c);
        sbD.append(", isSelected=");
        sbD.append(this.d);
        sbD.append(")");
        return sbD.toString();
    }
}
