package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class t06 {
    public final u06 a;
    public final String b;
    public final String c;
    public final Integer d;

    public t06(u06 u06Var, String str, String str2, Integer num) {
        this.a = u06Var;
        this.b = str;
        this.c = str2;
        this.d = num;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t06)) {
            return false;
        }
        t06 t06Var = (t06) obj;
        return this.a == t06Var.a && defpackage.aa4.e(this.b, t06Var.b) && defpackage.aa4.e(this.c, t06Var.c) && defpackage.aa4.e(this.d, t06Var.d);
    }

    public final int hashCode() {
        int iA = l4.a(l4.a(this.a.hashCode() * 31, 31, this.b), 31, this.c);
        Integer num = this.d;
        return iA + (num == null ? 0 : num.hashCode());
    }

    public final String toString() {
        return "CategorizedError(category=" + this.a + ", errorCode=" + this.b + ", errorMessage=" + this.c + ", httpCode=" + this.d + ")";
    }
}
