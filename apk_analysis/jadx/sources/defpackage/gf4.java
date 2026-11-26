package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class gf4 implements ef4 {
    public final ef4 b;

    public gf4(ef4 ef4Var) {
        ef4Var.getClass();
        this.b = ef4Var;
    }

    @Override // defpackage.ef4
    public final boolean b() {
        return this.b.b();
    }

    @Override // defpackage.ef4
    public final ne4 d() {
        return this.b.d();
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        gf4 gf4Var = obj instanceof gf4 ? (gf4) obj : null;
        ef4 ef4Var = gf4Var != null ? gf4Var.b : null;
        ef4 ef4Var2 = this.b;
        if (!aa4.e(ef4Var2, ef4Var)) {
            return false;
        }
        ne4 ne4VarD = ef4Var2.d();
        if (ne4VarD instanceof ne4) {
            ef4 ef4Var3 = obj instanceof ef4 ? (ef4) obj : null;
            ne4 ne4VarD2 = ef4Var3 != null ? ef4Var3.d() : null;
            if (ne4VarD2 != null && (ne4VarD2 instanceof ne4)) {
                return d31.n(ne4VarD).equals(d31.n(ne4VarD2));
            }
        }
        return false;
    }

    @Override // defpackage.ef4
    public final List<ff4> getArguments() {
        return this.b.getArguments();
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return "KTypeWrapper: " + this.b;
    }
}
