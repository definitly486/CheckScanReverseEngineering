package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class t18 {
    public static final t18 c;
    public final hn2 a;
    public final hn2 b;

    static {
        hn2.b bVar = hn2.b.a;
        c = new t18(bVar, bVar);
    }

    public t18(hn2 hn2Var, hn2 hn2Var2) {
        this.a = hn2Var;
        this.b = hn2Var2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t18)) {
            return false;
        }
        t18 t18Var = (t18) obj;
        return aa4.e(this.a, t18Var.a) && aa4.e(this.b, t18Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "Size(width=" + this.a + ", height=" + this.b + ")";
    }
}
