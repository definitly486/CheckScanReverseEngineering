package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class gw6 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final Float f;

    public gw6(String str, String str2, String str3, String str4, String str5, Float f) {
        str.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
        this.f = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gw6)) {
            return false;
        }
        gw6 gw6Var = (gw6) obj;
        return aa4.e(this.a, gw6Var.a) && this.b.equals(gw6Var.b) && this.c.equals(gw6Var.c) && this.d.equals(gw6Var.d) && aa4.e(this.e, gw6Var.e) && aa4.e(this.f, gw6Var.f);
    }

    public final int hashCode() {
        int iB = zg.b(zg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d);
        String str = this.e;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        Float f = this.f;
        return iHashCode + (f != null ? f.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("QueueReceiptData(qrCode=", this.a, ", fn=", this.b, ", fpd=");
        kv2.c(sbD, this.c, ", fd=", this.d, ", inn=");
        sbD.append(this.e);
        sbD.append(", sum=");
        sbD.append(this.f);
        sbD.append(")");
        return sbD.toString();
    }
}
