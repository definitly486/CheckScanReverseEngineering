package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class wt6 {
    public final long a;
    public final String b;
    public final String c;
    public final String d;

    public wt6(long j, String str, String str2, String str3) {
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
        if (!(obj instanceof wt6)) {
            return false;
        }
        wt6 wt6Var = (wt6) obj;
        return this.a == wt6Var.a && aa4.e(this.b, wt6Var.b) && aa4.e(this.c, wt6Var.c) && aa4.e(this.d, wt6Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + zg.b(zg.b(Long.hashCode(this.a) * 31, 31, this.b), 31, this.c);
    }

    public final String toString() {
        StringBuilder sbD = ah.d(this.a, "PurchaseSubmitInfoModel(purchaseId=", ", title=", this.b);
        kv2.c(sbD, ", text=", this.c, ", buttonText=", this.d);
        sbD.append(")");
        return sbD.toString();
    }
}
