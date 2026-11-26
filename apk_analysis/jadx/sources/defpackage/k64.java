package defpackage;

import java.time.DateTimeException;
import java.time.Instant;

/* JADX INFO: loaded from: classes5.dex */
public final class k64 {
    public static final h64 a(h64 h64Var, long j, lc2.e eVar) throws Exception {
        h64Var.getClass();
        try {
            pp2 pp2VarQ = d31.q(j, eVar.c);
            long j2 = pp2VarQ.a;
            Instant instantPlusNanos = h64Var.b.plusSeconds(j2).plusNanos(pp2VarQ.b);
            instantPlusNanos.getClass();
            return new h64(instantPlusNanos);
        } catch (Exception e) {
            if (!(e instanceof DateTimeException) && !(e instanceof ArithmeticException)) {
                throw e;
            }
            if (j > 0) {
                h64.Companion.getClass();
                return h64.d;
            }
            h64.Companion.getClass();
            return h64.c;
        }
    }
}
