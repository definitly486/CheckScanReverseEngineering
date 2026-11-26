package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class o45 {
    public static final o45 c;
    public final List a;
    public final List b;

    static {
        defpackage.kx2 kx2Var = defpackage.kx2.b;
        c = new o45(kx2Var, kx2Var);
    }

    public o45(List list, List list2) {
        this.a = list;
        this.b = list2;
    }

    public final List a() {
        return this.b;
    }

    public final List b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o45)) {
            return false;
        }
        o45 o45Var = (o45) obj;
        return defpackage.aa4.e(this.a, o45Var.a) && defpackage.aa4.e(this.b, o45Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "RawJsonRepositoryResult(resultData=" + this.a + ", errors=" + this.b + ")";
    }
}
