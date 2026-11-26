package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class we8 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final boolean e;

    public we8(String str, String str2, String str3, String str4, boolean z) {
        x7.b(str2, str3, str4);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof we8)) {
            return false;
        }
        we8 we8Var = (we8) obj;
        return aa4.e(this.a, we8Var.a) && aa4.e(this.b, we8Var.b) && aa4.e(this.c, we8Var.c) && aa4.e(this.d, we8Var.d) && this.e == we8Var.e;
    }

    public final int hashCode() {
        String str = this.a;
        return Boolean.hashCode(this.e) + zg.b(zg.b(zg.b((str == null ? 0 : str.hashCode()) * 31, 31, this.b), 31, this.c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("SupportFormResult(logoUrl=", this.a, ", title=", this.b, ", description=");
        kv2.c(sbD, this.c, ", buttonTitle=", this.d, ", isError=");
        return dh.e(sbD, this.e, ")");
    }
}
