package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class b54 {
    public final String a;
    public final c42 b;

    public b54(String str, c42 c42Var) {
        str.getClass();
        this.a = str;
        this.b = c42Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b54)) {
            return false;
        }
        b54 b54Var = (b54) obj;
        return aa4.e(this.a, b54Var.a) && this.b == b54Var.b;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        c42 c42Var = this.b;
        return iHashCode + (c42Var == null ? 0 : c42Var.hashCode());
    }

    public final String toString() {
        return "Info(value=" + this.a + ", couponType=" + this.b + ")";
    }
}
