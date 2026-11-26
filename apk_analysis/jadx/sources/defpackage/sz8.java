package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class sz8 {
    public final int a;
    public final int b;
    public final int c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;

    public sz8(int i, int i2, int i3, String str, String str2, String str3, String str4) {
        x7.b(str, str2, str4);
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = str;
        this.e = str2;
        this.f = str3;
        this.g = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sz8)) {
            return false;
        }
        sz8 sz8Var = (sz8) obj;
        return this.a == sz8Var.a && this.b == sz8Var.b && this.c == sz8Var.c && aa4.e(this.d, sz8Var.d) && aa4.e(this.e, sz8Var.e) && aa4.e(this.f, sz8Var.f) && aa4.e(this.g, sz8Var.g);
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(ej0.b(this.c, ej0.b(this.b, Integer.hashCode(this.a) * 31, 31), 31), 31, this.d), 31, this.e);
        String str = this.f;
        return this.g.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sbF = bg.f(this.a, this.b, "TransferPhoneInfo(minimalSumInKopeikas=", ", maximumSumInKopeikas=", ", sumInKopeikas=");
        sbF.append(this.c);
        sbF.append(", descriptionMarkdown=");
        sbF.append(this.d);
        sbF.append(", phone=");
        kv2.c(sbF, this.e, ", phoneOperatorIconUrl=", this.f, ", rule=");
        return me0.d(sbF, this.g, ")");
    }
}
