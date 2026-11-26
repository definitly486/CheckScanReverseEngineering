package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class po2 extends uo2 {
    public final uo2 e;
    public final uo2 f;
    public final uo2 g;
    public final String h;
    public final List i;
    public final List j;

    public po2(uo2 uo2Var, uo2 uo2Var2, uo2 uo2Var3, String str) {
        super(str);
        this.e = uo2Var;
        this.f = uo2Var2;
        this.g = uo2Var3;
        this.h = str;
        this.i = defpackage.qn1.h0(uo2Var3.d(), defpackage.qn1.h0(uo2Var2.d(), uo2Var.d()));
        this.j = defpackage.qn1.h0(uo2Var3.b(), defpackage.qn1.h0(uo2Var2.b(), uo2Var.b()));
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

    public final uo2 e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof po2)) {
            return false;
        }
        po2 po2Var = (po2) obj;
        gz5 gz5Var = gz5.a;
        return defpackage.aa4.e(gz5Var, gz5Var) && defpackage.aa4.e(this.e, po2Var.e) && defpackage.aa4.e(this.f, po2Var.f) && defpackage.aa4.e(this.g, po2Var.g) && defpackage.aa4.e(this.h, po2Var.h);
    }

    public final uo2 f() {
        return this.f;
    }

    public final uo2 g() {
        return this.g;
    }

    public final int hashCode() {
        return this.h.hashCode() + ((this.g.hashCode() + ((this.f.hashCode() + ((this.e.hashCode() + (gz5.a.hashCode() * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        fz5 fz5Var = fz5.a;
        ez5 ez5Var = ez5.a;
        return "(" + this.e + " " + fz5Var + " " + this.f + " " + ez5Var + " " + this.g + ")";
    }
}
