package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class m6 implements o6 {
    public final String a;
    public final String b;
    public final String c;

    public m6(String str, String str2, String str3) {
        x7.b(str, str2, str3);
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m6)) {
            return false;
        }
        m6 m6Var = (m6) obj;
        return aa4.e(this.a, m6Var.a) && aa4.e(this.b, m6Var.b) && aa4.e(this.c, m6Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        return me0.d(ad2.d("ActivateSettingsPromocodeError(title=", this.a, ", subtitle=", this.b, ", button="), this.c, ")");
    }
}
