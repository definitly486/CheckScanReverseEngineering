package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class tt6 {
    public final long a;
    public final String b;
    public final String c;
    public final String d;

    public tt6(long j, String str, String str2, String str3) {
        x7.b(str, str2, str3);
        this.a = j;
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof tt6)) {
            return false;
        }
        tt6 tt6Var = (tt6) obj;
        return this.a == tt6Var.a && aa4.e(this.b, tt6Var.b) && aa4.e(this.c, tt6Var.c) && aa4.e(this.d, tt6Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + zg.b(zg.b(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c);
    }

    public final String toString() {
        StringBuilder sbD = ah.d(this.a, "PurchaseShopImageInfoModel(purchaseId=", ", title=", this.b);
        kv2.c(sbD, ", text=", this.c, ", exampleImageUrl=", this.d);
        sbD.append(")");
        return sbD.toString();
    }
}
