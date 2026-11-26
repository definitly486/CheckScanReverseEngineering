package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class pt6 {
    public final long a;
    public final String b;
    public final String c;

    public pt6(long j, String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = j;
        this.b = str;
        this.c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pt6)) {
            return false;
        }
        pt6 pt6Var = (pt6) obj;
        return this.a == pt6Var.a && aa4.e(this.b, pt6Var.b) && aa4.e(this.c, pt6Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + zg.b(Long.hashCode(this.a) * 31, 31, this.b);
    }

    public final String toString() {
        return kh.c(ah.d(this.a, "PurchaseBankImageInfoModel(purchaseId=", ", title=", this.b), ", text=", this.c, ")");
    }
}
