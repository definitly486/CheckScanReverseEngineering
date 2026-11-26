package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class a64 {
    public final String a;
    public final String b;
    public final long c;
    public final long d;
    public final Long e;

    public a64(String str, String str2, long j, long j2, Long l) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
        this.c = j;
        this.d = j2;
        this.e = l;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a64)) {
            return false;
        }
        a64 a64Var = (a64) obj;
        return aa4.e(this.a, a64Var.a) && aa4.e(this.b, a64Var.b) && this.c == a64Var.c && this.d == a64Var.d && this.e.equals(a64Var.e);
    }

    public final int hashCode() {
        return this.e.hashCode() + vg.b(vg.b(zg.b(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31, this.d);
    }
}
