package defpackage;

import com.google.common.collect.n;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class sv3 {
    public final int a;
    public final long b;
    public final n c;

    public sv3(int i, long j, Set<h88.a> set) {
        this.a = i;
        this.b = j;
        this.c = n.n(set);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || sv3.class != obj.getClass()) {
            return false;
        }
        sv3 sv3Var = (sv3) obj;
        return this.a == sv3Var.a && this.b == sv3Var.b && Objects.equals(this.c, sv3Var.c);
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.a), Long.valueOf(this.b), this.c);
    }

    public final String toString() {
        od5.a aVarB = od5.b(this);
        aVarB.a(this.a, "maxAttempts");
        aVarB.b(this.b, "hedgingDelayNanos");
        aVarB.d(this.c, "nonFatalStatusCodes");
        return aVarB.toString();
    }
}
