package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ot6 {
    public final long a;
    public final yt6 b;
    public final String c;
    public final pt6 d;
    public final tt6 e;

    public ot6(long j, yt6 yt6Var, String str, pt6 pt6Var, tt6 tt6Var) {
        yt6Var.getClass();
        str.getClass();
        pt6Var.getClass();
        tt6Var.getClass();
        this.a = j;
        this.b = yt6Var;
        this.c = str;
        this.d = pt6Var;
        this.e = tt6Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ot6)) {
            return false;
        }
        ot6 ot6Var = (ot6) obj;
        return this.a == ot6Var.a && this.b == ot6Var.b && aa4.e(this.c, ot6Var.c) && aa4.e(this.d, ot6Var.d) && aa4.e(this.e, ot6Var.e);
    }

    public final int hashCode() {
        return this.e.hashCode() + ((this.d.hashCode() + zg.b((this.b.hashCode() + (Long.hashCode(this.a) * 31)) * 31, 31, this.c)) * 31);
    }

    public final String toString() {
        return "PurchaseAddScreenshotInfo(id=" + this.a + ", type=" + this.b + ", imageGuideText=" + this.c + ", bankImageInfoModel=" + this.d + ", shopImageInfoModel=" + this.e + ")";
    }
}
