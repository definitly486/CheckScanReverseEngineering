package defpackage;

import java.time.DateTimeException;
import java.time.LocalDate;
import kotlin.NoWhenBranchMatchedException;
import kotlinx.datetime.DateTimeArithmeticException;

/* JADX INFO: loaded from: classes5.dex */
public final class it4 {
    public static final long a = LocalDate.MIN.toEpochDay();
    public static final long b = LocalDate.MAX.toEpochDay();

    public static final ct4 a(ct4 ct4Var, int i, lc2.b bVar) {
        LocalDate localDatePlusMonths;
        bVar.getClass();
        long j = i;
        LocalDate localDate = ct4Var.b;
        try {
            if (bVar instanceof lc2.c) {
                long jAddExact = Math.addExact(localDate.toEpochDay(), Math.multiplyExact(j, ((lc2.c) bVar).c));
                long j2 = a;
                if (jAddExact > b || j2 > jAddExact) {
                    throw new DateTimeException("The resulting day " + jAddExact + " is out of supported LocalDate range.");
                }
                localDatePlusMonths = LocalDate.ofEpochDay(jAddExact);
                localDatePlusMonths.getClass();
            } else {
                if (!(bVar instanceof lc2.d)) {
                    throw new NoWhenBranchMatchedException();
                }
                localDatePlusMonths = localDate.plusMonths(Math.multiplyExact(j, ((lc2.d) bVar).c));
            }
            return new ct4(localDatePlusMonths);
        } catch (Exception e) {
            if (!(e instanceof DateTimeException) && !(e instanceof ArithmeticException)) {
                throw e;
            }
            throw new DateTimeArithmeticException("The result of adding " + j + " of " + bVar + " to " + ct4Var + " is out of LocalDate range.", e);
        }
    }
}
