package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class a05 {
    public final String a;
    public final ql5 b;

    public a05(String str, ql5 ql5Var) {
        this.a = str;
        this.b = ql5Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a05)) {
            return false;
        }
        a05 a05Var = (a05) obj;
        return defpackage.aa4.e(this.a, a05Var.a) && defpackage.aa4.e(this.b, a05Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "Preview(base64=" + this.a + ", size=" + this.b + ")";
    }
}
