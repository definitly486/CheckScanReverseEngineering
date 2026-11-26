package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class kn3 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;

    public kn3(String str, String str2, String str3, String str4) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kn3)) {
            return false;
        }
        kn3 kn3Var = (kn3) obj;
        return this.a.equals(kn3Var.a) && this.b.equals(kn3Var.b) && aa4.e(this.c, kn3Var.c) && aa4.e(this.d, kn3Var.d);
    }

    public final int hashCode() {
        int iB = zg.b(this.a.hashCode() * 31, 31, this.b);
        String str = this.c;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return dg.c(ad2.d("GamesBanner(imageUrl=", this.a, ", title=", this.b, ", description="), this.c, ", buttonTitle=", this.d, ")");
    }
}
