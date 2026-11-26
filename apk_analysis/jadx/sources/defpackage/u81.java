package defpackage;

import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class u81 {
    public static final u81 c = new u81(qn1.y0(new ArrayList()), null);
    public final Set<a> a;
    public final y14 b;

    public static final class a {
        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof a);
        }

        public final int hashCode() {
            throw null;
        }

        public final String toString() {
            throw null;
        }
    }

    public u81(Set<a> set, y14 y14Var) {
        this.a = set;
        this.b = y14Var;
    }

    public final void a(String str, ll3<? extends List<? extends X509Certificate>> ll3Var) {
        str.getClass();
        Iterator<T> it = this.a.iterator();
        if (it.hasNext()) {
            ((a) it.next()).getClass();
            ra8.C(null, "**.", false);
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof u81)) {
            return false;
        }
        u81 u81Var = (u81) obj;
        return u81Var.a.equals(this.a) && aa4.e(u81Var.b, this.b);
    }

    public final int hashCode() {
        int iHashCode = (this.a.hashCode() + 1517) * 41;
        y14 y14Var = this.b;
        return iHashCode + (y14Var != null ? y14Var.hashCode() : 0);
    }
}
