package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class cg3 {
    public final sf3 a;
    public final bg3 b;
    public final bg3 c;
    public final bg3 d;
    public final vf3 e;

    public cg3(sf3 sf3Var, bg3 bg3Var, bg3 bg3Var2, bg3 bg3Var3, vf3 vf3Var) {
        this.a = sf3Var;
        this.b = bg3Var;
        this.c = bg3Var2;
        this.d = bg3Var3;
        this.e = vf3Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cg3)) {
            return false;
        }
        cg3 cg3Var = (cg3) obj;
        return this.a == cg3Var.a && defpackage.aa4.e(this.b, cg3Var.b) && defpackage.aa4.e(this.c, cg3Var.c) && defpackage.aa4.e(this.d, cg3Var.d) && defpackage.aa4.e(this.e, cg3Var.e);
    }

    public final int hashCode() {
        return this.e.hashCode() + ((this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "Style(animation=" + this.a + ", activeShape=" + this.b + ", inactiveShape=" + this.c + ", minimumShape=" + this.d + ", itemsPlacement=" + this.e + ")";
    }
}
