package defpackage;

import io.grpc.b;
import io.grpc.h;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class l86 extends h.AbstractC0206h {
    public final b a;
    public final la5 b;
    public final ra5<?, ?> c;
    public final h.f d;

    public l86(ra5<?, ?> ra5Var, la5 la5Var, b bVar, h.f fVar) {
        o8.l(ra5Var, "method");
        this.c = ra5Var;
        o8.l(la5Var, "headers");
        this.b = la5Var;
        o8.l(bVar, "callOptions");
        this.a = bVar;
        o8.l(fVar, "pickDetailsConsumer");
        this.d = fVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && l86.class == obj.getClass()) {
            l86 l86Var = (l86) obj;
            if (this.a == l86Var.a && this.b == l86Var.b && this.c == l86Var.c && Objects.equals(this.d, l86Var.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.a, this.b, this.c, this.d);
    }

    public final String toString() {
        return "[method=" + this.c + " headers=" + this.b + " callOptions=" + this.a + "]";
    }
}
