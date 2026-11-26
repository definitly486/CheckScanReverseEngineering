package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class x48 implements b83 {
    public final h24 a;
    public final String b;
    public final z82 c;

    public x48(h24 h24Var, String str, z82 z82Var) {
        this.a = h24Var;
        this.b = str;
        this.c = z82Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x48)) {
            return false;
        }
        x48 x48Var = (x48) obj;
        return aa4.e(this.a, x48Var.a) && aa4.e(this.b, x48Var.b) && this.c == x48Var.c;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return this.c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        return "SourceFetchResult(source=" + this.a + ", mimeType=" + this.b + ", dataSource=" + this.c + ")";
    }
}
