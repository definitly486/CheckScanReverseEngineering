package defpackage;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes3.dex */
public final class t37 {
    public final Set<c37> a = Collections.newSetFromMap(new WeakHashMap());
    public final HashSet b = new HashSet();
    public boolean c;

    public final boolean a(c37 c37Var) {
        boolean z = true;
        if (c37Var == null) {
            return true;
        }
        boolean zRemove = this.a.remove(c37Var);
        if (!this.b.remove(c37Var) && !zRemove) {
            z = false;
        }
        if (z) {
            c37Var.clear();
        }
        return z;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("{numRequests=");
        sb.append(this.a.size());
        sb.append(", isPaused=");
        return dh.e(sb, this.c, "}");
    }
}
