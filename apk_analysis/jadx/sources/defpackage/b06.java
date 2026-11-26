package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class b06 {
    public final String a;
    public final boolean b;
    public final String c;
    public final String d;
    public final String e;

    public b06(String str, boolean z, String str2, String str3, String str4) {
        this.a = str;
        this.b = z;
        this.c = str2;
        this.d = str3;
        this.e = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b06)) {
            return false;
        }
        b06 b06Var = (b06) obj;
        return this.a.equals(b06Var.a) && this.b == b06Var.b && aa4.e(this.c, b06Var.c) && aa4.e(this.d, b06Var.d) && aa4.e(this.e, b06Var.e);
    }

    public final int hashCode() {
        int iC = tg.c(this.a.hashCode() * 31, 31, this.b);
        String str = this.c;
        int iHashCode = (iC + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.e;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbB = p2.b("OrdInfo(promotionText=", this.a, ", promotion=", ", ordToken=", this.b);
        kv2.c(sbB, this.c, ", title=", this.d, ", description=");
        return me0.d(sbB, this.e, ")");
    }
}
