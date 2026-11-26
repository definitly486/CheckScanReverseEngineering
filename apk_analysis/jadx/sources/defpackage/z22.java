package defpackage;

import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes5.dex */
public final class z22 {
    public static final kz1 a(o22 o22Var) {
        if (o22Var.get(mb4.a.b) == null) {
            o22Var = o22Var.plus(qb4.a());
        }
        return new kz1(o22Var);
    }

    public static final void b(y22 y22Var, CancellationException cancellationException) {
        mb4 mb4Var = (mb4) y22Var.getCoroutineContext().get(mb4.a.b);
        if (mb4Var != null) {
            mb4Var.cancel(cancellationException);
        } else {
            og.e(y22Var, "Scope cannot be cancelled because it does not have a job: ");
        }
    }

    public static final <R> Object c(bm3<? super y22, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super R> e02Var) {
        af7 af7Var = new af7(e02Var, e02Var.getContext());
        Object objD = cn1.d(af7Var, true, af7Var, bm3Var);
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objD;
    }

    public static final void d(y22 y22Var) {
        qb4.e(y22Var.getCoroutineContext());
    }

    public static final boolean e(y22 y22Var) {
        mb4 mb4Var = (mb4) y22Var.getCoroutineContext().get(mb4.a.b);
        if (mb4Var != null) {
            return mb4Var.isActive();
        }
        return true;
    }
}
