package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ci1 {
    public final int a;
    public final b06 b;
    public final String c;
    public final String d;

    public ci1(int i, b06 b06Var, String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = i;
        this.b = b06Var;
        this.c = str;
        this.d = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ci1)) {
            return false;
        }
        ci1 ci1Var = (ci1) obj;
        return this.a == ci1Var.a && aa4.e(this.b, ci1Var.b) && aa4.e(this.c, ci1Var.c) && aa4.e(this.d, ci1Var.d);
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.a) * 31;
        b06 b06Var = this.b;
        return this.d.hashCode() + zg.b((iHashCode + (b06Var == null ? 0 : b06Var.hashCode())) * 31, 31, this.c);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ChequesMiniBanner(id=");
        sb.append(this.a);
        sb.append(", ordInfo=");
        sb.append(this.b);
        sb.append(", imageUrl=");
        return dg.c(sb, this.c, ", url=", this.d, ")");
    }
}
