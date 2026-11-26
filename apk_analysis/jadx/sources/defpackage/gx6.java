package defpackage;

import java.io.Serializable;
import java.lang.Comparable;

/* JADX INFO: loaded from: classes4.dex */
public final class gx6<C extends Comparable> implements bf6<C>, Serializable {
    public static final gx6<Comparable> d = new gx6<>(l72.c.c, l72.a.c);
    public final l72<C> b;
    public final l72<C> c;

    public gx6(l72<C> l72Var, l72<C> l72Var2) {
        l72Var.getClass();
        this.b = l72Var;
        l72Var2.getClass();
        this.c = l72Var2;
        if (l72Var.compareTo(l72Var2) > 0 || l72Var == l72.a.c || l72Var2 == l72.c.c) {
            StringBuilder sb = new StringBuilder(16);
            l72Var.d(sb);
            sb.append("..");
            l72Var2.e(sb);
            fg.c("Invalid range: ".concat(sb.toString()));
            throw null;
        }
    }

    public static gx6 a(Long l, Long l2) {
        return new gx6(new l72.d(l), new l72.b(l2));
    }

    @Override // defpackage.bf6
    @Deprecated
    public final boolean apply(Object obj) {
        Comparable comparable = (Comparable) obj;
        comparable.getClass();
        return this.b.g(comparable) && !this.c.g(comparable);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof gx6) {
            gx6 gx6Var = (gx6) obj;
            if (this.b.equals(gx6Var.b) && this.c.equals(gx6Var.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.c.hashCode() + (this.b.hashCode() * 31);
    }

    public Object readResolve() {
        gx6<Comparable> gx6Var = d;
        return equals(gx6Var) ? gx6Var : this;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(16);
        this.b.d(sb);
        sb.append("..");
        this.c.e(sb);
        return sb.toString();
    }
}
