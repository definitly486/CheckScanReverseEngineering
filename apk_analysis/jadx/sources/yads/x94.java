package yads;

import defpackage.up7;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class x94 {
    public static final w94 Companion = new w94();
    public final ca4 a;
    public final fa4 b;

    public x94(int i, ca4 ca4Var, fa4 fa4Var) {
        if (3 != (i & 3)) {
            defpackage.r96.f(v94.b, i, 3);
            throw null;
        }
        this.a = ca4Var;
        this.b = fa4Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x94)) {
            return false;
        }
        x94 x94Var = (x94) obj;
        return defpackage.aa4.e(this.a, x94Var.a) && defpackage.aa4.e(this.b, x94Var.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        fa4 fa4Var = this.b;
        return iHashCode + (fa4Var == null ? 0 : fa4Var.hashCode());
    }

    public final String toString() {
        return "MobileAdsNetworkLog(request=" + this.a + ", response=" + this.b + ")";
    }

    public x94(ca4 ca4Var, fa4 fa4Var) {
        this.a = ca4Var;
        this.b = fa4Var;
    }
}
