package defpackage;

import com.google.common.collect.n;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class q67 {
    public final int a;
    public final long b;
    public final long c;
    public final double d;
    public final Long e;
    public final n f;

    public q67(int i, long j, long j2, double d, Long l, Set<h88.a> set) {
        this.a = i;
        this.b = j;
        this.c = j2;
        this.d = d;
        this.e = l;
        this.f = n.n(set);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof q67)) {
            return false;
        }
        q67 q67Var = (q67) obj;
        return this.a == q67Var.a && this.b == q67Var.b && this.c == q67Var.c && Double.compare(this.d, q67Var.d) == 0 && Objects.equals(this.e, q67Var.e) && Objects.equals(this.f, q67Var.f);
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.a), Long.valueOf(this.b), Long.valueOf(this.c), Double.valueOf(this.d), this.e, this.f);
    }

    public final String toString() {
        od5.a aVarB = od5.b(this);
        aVarB.a(this.a, "maxAttempts");
        aVarB.b(this.b, "initialBackoffNanos");
        aVarB.b(this.c, "maxBackoffNanos");
        aVarB.e("backoffMultiplier", String.valueOf(this.d));
        aVarB.d(this.e, "perAttemptRecvTimeoutNanos");
        aVarB.d(this.f, "retryableStatusCodes");
        return aVarB.toString();
    }
}
