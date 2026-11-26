package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class k14 implements b83 {
    public final x04 a;
    public final boolean b;
    public final z82 c;

    public k14(x04 x04Var, boolean z, z82 z82Var) {
        this.a = x04Var;
        this.b = z;
        this.c = z82Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k14)) {
            return false;
        }
        k14 k14Var = (k14) obj;
        return this.a.equals(k14Var.a) && this.b == k14Var.b && this.c == k14Var.c;
    }

    public final int hashCode() {
        return this.c.hashCode() + tg.c(this.a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        return "ImageFetchResult(image=" + this.a + ", isSampled=" + this.b + ", dataSource=" + this.c + ")";
    }
}
