package yads;

import defpackage.up7;

/* JADX INFO: loaded from: classes6.dex */
@up7
public final class fz2 {
    public static final ez2 Companion = new ez2();
    public final nz2 a;

    public fz2(int i, nz2 nz2Var) {
        if (1 == (i & 1)) {
            this.a = nz2Var;
        } else {
            defpackage.r96.f(dz2.b, i, 1);
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof fz2) && defpackage.aa4.e(this.a, ((fz2) obj).a);
    }

    public final int hashCode() {
        nz2 nz2Var = this.a;
        if (nz2Var == null) {
            return 0;
        }
        return nz2Var.hashCode();
    }

    public final String toString() {
        return "FontParameters(urls=" + this.a + ")";
    }
}
