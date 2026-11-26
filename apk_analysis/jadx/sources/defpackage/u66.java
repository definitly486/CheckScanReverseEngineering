package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class u66 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;

    public u66(String str, String str2, String str3, String str4, String str5) {
        m2.e(str2, str3, str4, str5);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u66)) {
            return false;
        }
        u66 u66Var = (u66) obj;
        return aa4.e(this.a, u66Var.a) && aa4.e(this.b, u66Var.b) && aa4.e(this.c, u66Var.c) && aa4.e(this.d, u66Var.d) && aa4.e(this.e, u66Var.e);
    }

    public final int hashCode() {
        String str = this.a;
        return this.e.hashCode() + zg.b(zg.b(zg.b((str == null ? 0 : str.hashCode()) * 31, 31, this.b), 31, this.c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("PersonalDataSuccess(iconUrl=", this.a, ", title=", this.b, ", text=");
        kv2.c(sbD, this.c, ", mainButtonTitle=", this.d, ", url=");
        return me0.d(sbD, this.e, ")");
    }
}
