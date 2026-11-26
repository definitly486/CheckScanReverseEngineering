package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class kd1 {
    public final String a;
    public final String b;
    public final String c;

    public kd1(String str, String str2, String str3) {
        x7.b(str, str2, str3);
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kd1)) {
            return false;
        }
        kd1 kd1Var = (kd1) obj;
        return aa4.e(this.a, kd1Var.a) && aa4.e(this.b, kd1Var.b) && aa4.e(this.c, kd1Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + zg.b(this.a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        return me0.d(ad2.d("ChequeAlert(description=", this.a, ", btnTitle=", this.b, ", btnUrl="), this.c, ")");
    }
}
