package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class az8 {
    public final int a;
    public final int b;
    public final int c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;

    public az8(int i, int i2, int i3, String str, String str2, String str3, String str4) {
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
        if (!(obj instanceof az8)) {
            return false;
        }
        az8 az8Var = (az8) obj;
        return this.a == az8Var.a && this.b == az8Var.b && this.c == az8Var.c && aa4.e(this.d, az8Var.d) && aa4.e(this.e, az8Var.e) && aa4.e(this.f, az8Var.f) && aa4.e(this.g, az8Var.g);
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(ej0.b(this.c, ej0.b(this.b, Integer.hashCode(this.a) * 31, 31), 31), 31, this.d), 31, this.e);
        String str = this.f;
        return this.g.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sbF = bg.f(this.a, this.b, "TransferCardInfo(minimalSumInKopeikas=", ", maximumSumInKopeikas=", ", sumInKopeikas=");
        sbF.append(this.c);
        sbF.append(", descriptionMarkdown=");
        sbF.append(this.d);
        sbF.append(", cardDigits=");
        kv2.c(sbF, this.e, ", bankIconUrl=", this.f, ", rules=");
        return me0.d(sbF, this.g, ")");
    }
}
