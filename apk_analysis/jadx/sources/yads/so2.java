package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class so2 extends uo2 {
    public final gy5 e;
    public final String f;
    public final List g;
    public final List h;

    public so2(gy5 gy5Var, String str) {
        super(str);
        this.e = gy5Var;
        this.f = str;
        defpackage.kx2 kx2Var = defpackage.kx2.b;
        this.g = kx2Var;
        this.h = kx2Var;
    }

    @Override // yads.uo2
    public final Object a(bp2 bp2Var) {
        bp2Var.getClass();
        gy5 gy5Var = this.e;
        if (gy5Var instanceof ey5) {
            return ((ey5) gy5Var).a;
        }
        if (gy5Var instanceof dy5) {
            return Boolean.valueOf(((dy5) gy5Var).a);
        }
        if (gy5Var instanceof fy5) {
            return ((fy5) gy5Var).a;
        }
        defpackage.me0.e();
        return null;
    }

    @Override // yads.uo2
    public final List b() {
        return this.h;
    }

    @Override // yads.uo2
    public final List d() {
        return this.g;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof so2)) {
            return false;
        }
        so2 so2Var = (so2) obj;
        return defpackage.aa4.e(this.e, so2Var.e) && defpackage.aa4.e(this.f, so2Var.f);
    }

    public final int hashCode() {
        return this.f.hashCode() + (this.e.hashCode() * 31);
    }

    public final String toString() {
        gy5 gy5Var = this.e;
        if (gy5Var instanceof fy5) {
            return defpackage.me0.c("'", ((fy5) gy5Var).a(), "'");
        }
        if (gy5Var instanceof ey5) {
            return ((ey5) gy5Var).a().toString();
        }
        if (gy5Var instanceof dy5) {
            return String.valueOf(((dy5) gy5Var).a());
        }
        defpackage.me0.e();
        return null;
    }
}
