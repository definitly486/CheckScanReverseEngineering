package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class b41 extends d41 {
    public final x31 a;
    public final x31 b;
    public final List c;
    public final a41 d;

    public b41(x31 x31Var, x31 x31Var2, List list, a41 a41Var) {
        this.a = x31Var;
        this.b = x31Var2;
        this.c = list;
        this.d = a41Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b41)) {
            return false;
        }
        b41 b41Var = (b41) obj;
        return defpackage.aa4.e(this.a, b41Var.a) && defpackage.aa4.e(this.b, b41Var.b) && defpackage.aa4.e(this.c, b41Var.c) && defpackage.aa4.e(this.d, b41Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + defpackage.e2.b(this.c, (this.b.hashCode() + (this.a.hashCode() * 31)) * 31, 31);
    }

    public final String toString() {
        return "RadialGradient(centerX=" + this.a + ", centerY=" + this.b + ", colors=" + this.c + ", radius=" + this.d + ")";
    }
}
