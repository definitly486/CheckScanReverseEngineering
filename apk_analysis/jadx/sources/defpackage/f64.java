package defpackage;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class f64 {
    public final hg4 a;
    public final ConcurrentHashMap b = new ConcurrentHashMap();
    public final ConcurrentHashMap c = new ConcurrentHashMap();

    public f64(hg4 hg4Var) {
        this.a = hg4Var;
    }

    public final d64<?> a(ne4<?> ne4Var, kv6 kv6Var, kv6 kv6Var2) {
        String value;
        ne4Var.getClass();
        kv6Var2.getClass();
        StringBuilder sb = new StringBuilder(oe4.a(ne4Var));
        sb.append(':');
        if (kv6Var == null || (value = kv6Var.getValue()) == null) {
            value = "";
        }
        sb.append(value);
        sb.append(':');
        sb.append(kv6Var2);
        return (d64) this.b.get(sb.toString());
    }
}
