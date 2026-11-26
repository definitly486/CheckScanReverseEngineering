package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class z99 {
    public final String a;
    public final String b;

    public z99(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z99)) {
            return false;
        }
        z99 z99Var = (z99) obj;
        return aa4.e(this.a, z99Var.a) && aa4.e(this.b, z99Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return n2.d("UserPolicy(title=", this.a, ", url=", this.b, ")");
    }
}
