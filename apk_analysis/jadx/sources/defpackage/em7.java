package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class em7 {
    public final int a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;

    public em7(int i, String str, String str2, String str3, String str4, String str5) {
        m2.e(str2, str3, str4, str5);
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
        this.f = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof em7)) {
            return false;
        }
        em7 em7Var = (em7) obj;
        return this.a == em7Var.a && this.b.equals(em7Var.b) && aa4.e(this.c, em7Var.c) && aa4.e(this.d, em7Var.d) && aa4.e(this.e, em7Var.e) && aa4.e(this.f, em7Var.f);
    }

    public final int hashCode() {
        return this.f.hashCode() + zg.b(zg.b(zg.b(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c), 31, this.d), 31, this.e);
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "SelectPromocodeApproveSheet(promocodeId=", ", iconUrl=", this.b, ", title=");
        kv2.c(sbE, this.c, ", description=", this.d, ", secondaryButtonTitle=");
        return dg.c(sbE, this.e, ", primaryButtonTitle=", this.f, ")");
    }
}
