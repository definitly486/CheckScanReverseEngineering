package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class q71 {
    public final int a;
    public final String b;
    public final String c;
    public final String d;

    public q71(int i, String str, String str2, String str3) {
        str.getClass();
        str3.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q71)) {
            return false;
        }
        q71 q71Var = (q71) obj;
        return this.a == q71Var.a && aa4.e(this.b, q71Var.b) && aa4.e(this.c, q71Var.c) && aa4.e(this.d, q71Var.d);
    }

    public final int hashCode() {
        int iB = zg.b(Integer.hashCode(this.a) * 31, 31, this.b);
        String str = this.c;
        return this.d.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        return dg.c(ng.e(this.a, "CategoryBonuses(id=", ", title=", this.b, ", url="), this.c, ", subtitle=", this.d, ")");
    }
}
