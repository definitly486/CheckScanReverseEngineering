package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class n81 {
    public final int a;
    public final String b;

    public n81(int i, String str) {
        str.getClass();
        this.a = i;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n81)) {
            return false;
        }
        n81 n81Var = (n81) obj;
        return this.a == n81Var.a && aa4.e(this.b, n81Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return c9.d(this.a, "CategoryModel(id=", ", name=", this.b, ")");
    }
}
