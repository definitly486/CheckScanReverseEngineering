package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ee4 {
    public final vg4 a;
    public final d9 b;
    public final e4 c;

    public ee4(e4 e4Var, d9 d9Var, vg4 vg4Var) {
        this.a = vg4Var;
        this.b = d9Var;
        this.c = e4Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ee4)) {
            return false;
        }
        ee4 ee4Var = (ee4) obj;
        return defpackage.aa4.e(this.a, ee4Var.a) && defpackage.aa4.e(this.b, ee4Var.b) && defpackage.aa4.e(this.c, ee4Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "NativeAdBlock(nativeAdResponse=" + this.a + ", adResponse=" + this.b + ", adConfiguration=" + this.c + ")";
    }
}
