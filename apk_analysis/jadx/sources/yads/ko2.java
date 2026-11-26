package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ko2 extends uo2 {
    public final cz5 e;
    public final uo2 f;
    public final uo2 g;
    public final String h;
    public final List i;
    public final List j;

    public ko2(cz5 cz5Var, uo2 uo2Var, uo2 uo2Var2, String str) {
        super(str);
        this.e = cz5Var;
        this.f = uo2Var;
        this.g = uo2Var2;
        this.h = str;
        this.i = defpackage.qn1.h0(uo2Var2.d(), uo2Var.d());
        this.j = defpackage.qn1.h0(uo2Var2.b(), uo2Var.b());
    }

    @Override // yads.uo2
    public final Object a(bp2 bp2Var) {
        return bp2Var.a(this);
    }

    @Override // yads.uo2
    public final List b() {
        return this.j;
    }

    @Override // yads.uo2
    public final List d() {
        return this.i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ko2)) {
            return false;
        }
        ko2 ko2Var = (ko2) obj;
        return defpackage.aa4.e(this.e, ko2Var.e) && defpackage.aa4.e(this.f, ko2Var.f) && defpackage.aa4.e(this.g, ko2Var.g) && defpackage.aa4.e(this.h, ko2Var.h);
    }

    public final int hashCode() {
        return this.h.hashCode() + ((this.g.hashCode() + ((this.f.hashCode() + (this.e.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "(" + this.f + " " + this.e + " " + this.g + ")";
    }
}
