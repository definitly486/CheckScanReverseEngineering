package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ro2 extends uo2 {
    public final mz5 e;
    public final uo2 f;
    public final String g;
    public final List h;
    public final List i;

    public ro2(mz5 mz5Var, uo2 uo2Var, String str) {
        super(str);
        this.e = mz5Var;
        this.f = uo2Var;
        this.g = str;
        this.h = uo2Var.d();
        this.i = uo2Var.b();
    }

    @Override // yads.uo2
    public final Object a(bp2 bp2Var) {
        return bp2Var.a(this);
    }

    @Override // yads.uo2
    public final List b() {
        return this.i;
    }

    @Override // yads.uo2
    public final List d() {
        return this.h;
    }

    public final uo2 e() {
        return this.f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ro2)) {
            return false;
        }
        ro2 ro2Var = (ro2) obj;
        return defpackage.aa4.e(this.e, ro2Var.e) && defpackage.aa4.e(this.f, ro2Var.f) && defpackage.aa4.e(this.g, ro2Var.g);
    }

    public final mz5 f() {
        return this.e;
    }

    public final int hashCode() {
        return this.g.hashCode() + ((this.f.hashCode() + (this.e.hashCode() * 31)) * 31);
    }

    public final String toString() {
        mz5 mz5Var = this.e;
        uo2 uo2Var = this.f;
        StringBuilder sb = new StringBuilder();
        sb.append(mz5Var);
        sb.append(uo2Var);
        return sb.toString();
    }
}
