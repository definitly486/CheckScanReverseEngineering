package yads;

import defpackage.k57;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class qo2 extends uo2 {
    public final hz5 e;
    public final uo2 f;
    public final uo2 g;
    public final String h;
    public final List i;
    public final List j;

    public qo2(hz5 hz5Var, uo2 uo2Var, uo2 uo2Var2, String str) {
        super(str);
        this.e = hz5Var;
        this.f = uo2Var;
        this.g = uo2Var2;
        this.h = str;
        this.i = defpackage.qn1.h0(uo2Var2.d(), uo2Var.d());
        this.j = defpackage.qn1.h0(uo2Var2.b(), uo2Var.b());
    }

    @Override // yads.uo2
    public final Object a(bp2 bp2Var) {
        Object aVar;
        bp2Var.getClass();
        try {
            aVar = bp2Var.a(this.f);
            a(this.f.a());
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (k57.a(aVar) == null) {
            return aVar;
        }
        Object objA = bp2Var.a(this.g);
        a(this.g.a());
        return objA;
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
        if (!(obj instanceof qo2)) {
            return false;
        }
        qo2 qo2Var = (qo2) obj;
        return defpackage.aa4.e(this.e, qo2Var.e) && defpackage.aa4.e(this.f, qo2Var.f) && defpackage.aa4.e(this.g, qo2Var.g) && defpackage.aa4.e(this.h, qo2Var.h);
    }

    public final int hashCode() {
        return this.h.hashCode() + ((this.g.hashCode() + ((this.f.hashCode() + (this.e.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "(" + this.f + " " + this.e + " " + this.g + ")";
    }
}
