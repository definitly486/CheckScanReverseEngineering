package defpackage;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes5.dex */
public final class tc5 {
    public final String a;
    public final LinkedHashSet<m08<?>> b;
    public final LinkedHashMap<String, d64<?>> c;
    public final LinkedHashSet<kv6> d;
    public final ArrayList e;

    public tc5(int i) {
        this.a = g.a();
        this.b = new LinkedHashSet<>();
        this.c = new LinkedHashMap<>();
        this.d = new LinkedHashSet<>();
        this.e = new ArrayList();
    }

    public final void a(d64<?> d64Var) {
        String value;
        gi0<?> gi0Var = d64Var.a;
        zk1 zk1Var = gi0Var.b;
        kv6 kv6Var = gi0Var.c;
        kv6 kv6Var2 = gi0Var.a;
        StringBuilder sb = new StringBuilder(oe4.a(zk1Var));
        sb.append(':');
        if (kv6Var == null || (value = kv6Var.getValue()) == null) {
            value = "";
        }
        sb.append(value);
        sb.append(':');
        sb.append(kv6Var2);
        this.c.put(sb.toString(), d64Var);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof tc5)) {
            return false;
        }
        return aa4.e(this.a, ((tc5) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public tc5() {
        this(0);
    }
}
