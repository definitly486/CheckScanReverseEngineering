package defpackage;

import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class jf8 implements pz3 {
    public final ff8 a;
    public final boolean b;
    public final Set<Integer> c;

    public jf8(ff8 ff8Var, boolean z, Set<Integer> set) {
        set.getClass();
        this.a = ff8Var;
        this.b = z;
        this.c = set;
    }

    public static jf8 d(jf8 jf8Var, boolean z, Set set, int i) {
        ff8 ff8Var = jf8Var.a;
        if ((i & 2) != 0) {
            z = jf8Var.b;
        }
        return new jf8(ff8Var, z, set);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jf8)) {
            return false;
        }
        jf8 jf8Var = (jf8) obj;
        return this.a.equals(jf8Var.a) && this.b == jf8Var.b && aa4.e(this.c, jf8Var.c);
    }

    @Override // defpackage.pz3
    public final Object f() {
        return this;
    }

    public final int hashCode() {
        return this.c.hashCode() + tg.c(this.a.hashCode() * 31, 31, this.b);
    }

    @Override // defpackage.pz3
    public final Object id() {
        return Integer.valueOf(this.a.a);
    }

    public final String toString() {
        return "SupportQuestionViewModel(question=" + this.a + ", isCollapsed=" + this.b + ", expandedChildIds=" + this.c + ")";
    }
}
