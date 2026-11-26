package yads;

import defpackage.g17;

/* JADX INFO: loaded from: classes6.dex */
public final class pr extends rr {
    public Character a = null;
    public final g17 b;
    public final char c;

    public pr(g17 g17Var, char c) {
        this.b = g17Var;
        this.c = c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pr)) {
            return false;
        }
        pr prVar = (pr) obj;
        return defpackage.aa4.e(this.a, prVar.a) && defpackage.aa4.e(this.b, prVar.b) && this.c == prVar.c;
    }

    public final int hashCode() {
        Character ch = this.a;
        int iHashCode = (ch == null ? 0 : ch.hashCode()) * 31;
        g17 g17Var = this.b;
        return Character.hashCode(this.c) + ((iHashCode + (g17Var != null ? g17Var.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "Dynamic(char=" + this.a + ", filter=" + this.b + ", placeholder=" + this.c + ")";
    }
}
