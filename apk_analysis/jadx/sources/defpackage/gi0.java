package defpackage;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class gi0<T> {
    public final kv6 a;
    public final zk1 b;
    public final kv6 c;
    public final bm3<ze7, i36, T> d;
    public final cg4 e;
    public final ArrayList f;
    public xy0<T> g;

    public gi0() {
        throw null;
    }

    public gi0(kv6 kv6Var, zk1 zk1Var, kv6 kv6Var2, bm3 bm3Var, cg4 cg4Var) {
        kv6Var.getClass();
        bm3Var.getClass();
        cg4Var.getClass();
        this.a = kv6Var;
        this.b = zk1Var;
        this.c = kv6Var2;
        this.d = bm3Var;
        this.e = cg4Var;
        this.f = new ArrayList(kx2.b);
        this.g = new xy0<>(null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        obj.getClass();
        gi0 gi0Var = (gi0) obj;
        return aa4.e(this.b, gi0Var.b) && aa4.e(this.c, gi0Var.c) && aa4.e(this.a, gi0Var.a);
    }

    public final int hashCode() {
        kv6 kv6Var = this.c;
        int iHashCode = kv6Var != null ? kv6Var.hashCode() : 0;
        return this.a.hashCode() + ((this.b.hashCode() + (iHashCode * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        sb.append(this.e);
        sb.append(": '");
        sb.append(oe4.a(this.b));
        sb.append('\'');
        kv6 kv6Var = this.c;
        if (kv6Var != null) {
            sb.append(",qualifier:");
            sb.append(kv6Var);
        }
        ba8 ba8Var = bf7.e;
        kv6 kv6Var2 = this.a;
        if (!aa4.e(kv6Var2, ba8Var)) {
            sb.append(",scope:");
            sb.append(kv6Var2);
        }
        ArrayList arrayList = this.f;
        if (!arrayList.isEmpty()) {
            sb.append(",binds:");
            qn1.Z(arrayList, sb, StringUtils.COMMA, new lm(1), 60);
        }
        sb.append(']');
        return sb.toString();
    }
}
