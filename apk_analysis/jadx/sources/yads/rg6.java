package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class rg6 {
    public final ux4 a;
    public final ux4 b;
    public final ux4 c;
    public final ux4 d;
    public final ux4 e;
    public final ux4 f;
    public final ux4 g;
    public final ux4 h;
    public final ux4 i;
    public final ux4 j;
    public final ux4 k;
    public final ux4 l;
    public final ux4 m;
    public final ux4 n;
    public final ux4 o;
    public final ux4 p;
    public final ux4 q;
    public final ux4 r;

    public rg6() {
        ux4 ux4Var = new ux4(20);
        ux4 ux4Var2 = new ux4(20);
        ux4 ux4Var3 = new ux4(3);
        ux4 ux4Var4 = new ux4(8);
        ux4 ux4Var5 = new ux4(12);
        ux4 ux4Var6 = new ux4(4);
        ux4 ux4Var7 = new ux4(4);
        ux4 ux4Var8 = new ux4(6);
        ux4 ux4Var9 = new ux4(2);
        ux4 ux4Var10 = new ux4(2);
        ux4 ux4Var11 = new ux4(4);
        ux4 ux4Var12 = new ux4(2);
        ux4 ux4Var13 = new ux4(2);
        ux4 ux4Var14 = new ux4(2);
        ux4 ux4Var15 = new ux4(2);
        ux4 ux4Var16 = new ux4(2);
        ux4 ux4Var17 = new ux4(2);
        ux4 ux4Var18 = new ux4(2);
        this.a = ux4Var;
        this.b = ux4Var2;
        this.c = ux4Var3;
        this.d = ux4Var4;
        this.e = ux4Var5;
        this.f = ux4Var6;
        this.g = ux4Var7;
        this.h = ux4Var8;
        this.i = ux4Var9;
        this.j = ux4Var10;
        this.k = ux4Var11;
        this.l = ux4Var12;
        this.m = ux4Var13;
        this.n = ux4Var14;
        this.o = ux4Var15;
        this.p = ux4Var16;
        this.q = ux4Var17;
        this.r = ux4Var18;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rg6)) {
            return false;
        }
        rg6 rg6Var = (rg6) obj;
        return defpackage.aa4.e(this.a, rg6Var.a) && defpackage.aa4.e(this.b, rg6Var.b) && defpackage.aa4.e(this.c, rg6Var.c) && defpackage.aa4.e(this.d, rg6Var.d) && defpackage.aa4.e(this.e, rg6Var.e) && defpackage.aa4.e(this.f, rg6Var.f) && defpackage.aa4.e(this.g, rg6Var.g) && defpackage.aa4.e(this.h, rg6Var.h) && defpackage.aa4.e(this.i, rg6Var.i) && defpackage.aa4.e(this.j, rg6Var.j) && defpackage.aa4.e(this.k, rg6Var.k) && defpackage.aa4.e(this.l, rg6Var.l) && defpackage.aa4.e(this.m, rg6Var.m) && defpackage.aa4.e(this.n, rg6Var.n) && defpackage.aa4.e(this.o, rg6Var.o) && defpackage.aa4.e(this.p, rg6Var.p) && defpackage.aa4.e(this.q, rg6Var.q) && defpackage.aa4.e(this.r, rg6Var.r);
    }

    public final int hashCode() {
        return this.r.hashCode() + ((this.q.hashCode() + ((this.p.hashCode() + ((this.o.hashCode() + ((this.n.hashCode() + ((this.m.hashCode() + ((this.l.hashCode() + ((this.k.hashCode() + ((this.j.hashCode() + ((this.i.hashCode() + ((this.h.hashCode() + ((this.g.hashCode() + ((this.f.hashCode() + ((this.e.hashCode() + ((this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ViewPreCreationProfile(id=null, text=" + this.a + ", image=" + this.b + ", gifImage=" + this.c + ", overlapContainer=" + this.d + ", linearContainer=" + this.e + ", wrapContainer=" + this.f + ", grid=" + this.g + ", gallery=" + this.h + ", pager=" + this.i + ", tab=" + this.j + ", state=" + this.k + ", custom=" + this.l + ", indicator=" + this.m + ", slider=" + this.n + ", input=" + this.o + ", select=" + this.p + ", video=" + this.q + ", switch=" + this.r + ")";
    }
}
