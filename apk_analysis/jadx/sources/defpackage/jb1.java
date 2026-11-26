package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class jb1 {
    public final List<pz3> a;
    public final b06 b;

    /* JADX WARN: Multi-variable type inference failed */
    public jb1(List<? extends pz3> list, b06 b06Var) {
        this.a = list;
        this.b = b06Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jb1)) {
            return false;
        }
        jb1 jb1Var = (jb1) obj;
        return this.a.equals(jb1Var.a) && aa4.e(this.b, jb1Var.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        b06 b06Var = this.b;
        return iHashCode + (b06Var == null ? 0 : b06Var.hashCode());
    }

    public final String toString() {
        return "CheckboxTaskSheet(items=" + this.a + ", ordInfo=" + this.b + ")";
    }
}
