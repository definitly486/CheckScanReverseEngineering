package defpackage;

import java.util.Iterator;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class qb4 {
    public static nb4 a() {
        return new nb4(null);
    }

    public static final void b(o22 o22Var, CancellationException cancellationException) {
        mb4 mb4Var = (mb4) o22Var.get(mb4.a.b);
        if (mb4Var != null) {
            mb4Var.cancel(cancellationException);
        }
    }

    public static final Object c(mb4 mb4Var, pg8 pg8Var) {
        mb4Var.cancel(null);
        Object objE0 = mb4Var.e0(pg8Var);
        return objE0 == a32.COROUTINE_SUSPENDED ? objE0 : j59.a;
    }

    public static void d(o22 o22Var) {
        mb4 mb4Var = (mb4) o22Var.get(mb4.a.b);
        if (mb4Var != null) {
            Iterator<mb4> it = mb4Var.v().iterator();
            while (it.hasNext()) {
                it.next().cancel(null);
            }
        }
    }

    public static final void e(o22 o22Var) {
        mb4 mb4Var = (mb4) o22Var.get(mb4.a.b);
        if (mb4Var != null && !mb4Var.isActive()) {
            throw mb4Var.y();
        }
    }

    public static final mb4 f(o22 o22Var) {
        mb4 mb4Var = (mb4) o22Var.get(mb4.a.b);
        if (mb4Var != null) {
            return mb4Var;
        }
        og.e(o22Var, "Current context doesn't contain Job in it: ");
        return null;
    }

    public static hp2 g(mb4 mb4Var, rb4 rb4Var) {
        return mb4Var instanceof sb4 ? ((sb4) mb4Var).R(true, rb4Var) : mb4Var.a(rb4Var.k(), true, new pb4(rb4Var));
    }

    public static final boolean h(o22 o22Var) {
        mb4 mb4Var = (mb4) o22Var.get(mb4.a.b);
        if (mb4Var != null) {
            return mb4Var.isActive();
        }
        return true;
    }
}
