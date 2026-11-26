package defpackage;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
public final class nh3 {

    public static final class a<T, R> extends gg3<R> {
        public final T c;
        public final xl3<? super T, ? extends dt6<? extends R>> d;

        public a(T t, xl3<? super T, ? extends dt6<? extends R>> xl3Var) {
            this.c = t;
            this.d = xl3Var;
        }

        @Override // defpackage.gg3
        public final void g(wb8<? super R> wb8Var) {
            try {
                dt6<? extends R> dt6VarApply = this.d.apply(this.c);
                nq5.a(dt6VarApply, "The mapper returned a null Publisher");
                dt6<? extends R> dt6Var = dt6VarApply;
                if (!(dt6Var instanceof Callable)) {
                    dt6Var.a(wb8Var);
                    return;
                }
                try {
                    Object objCall = ((Callable) dt6Var).call();
                    if (objCall != null) {
                        wb8Var.a(new ld7(wb8Var, objCall));
                    } else {
                        wb8Var.a(qx2.INSTANCE);
                        wb8Var.onComplete();
                    }
                } catch (Throwable th) {
                    m13.d(th);
                    wb8Var.a(qx2.INSTANCE);
                    wb8Var.onError(th);
                }
            } catch (Throwable th2) {
                wb8Var.a(qx2.INSTANCE);
                wb8Var.onError(th2);
            }
        }
    }

    public static <T, R> boolean a(dt6<T> dt6Var, wb8<? super R> wb8Var, xl3<? super T, ? extends dt6<? extends R>> xl3Var) {
        if (!(dt6Var instanceof Callable)) {
            return false;
        }
        try {
            a06 a06Var = (Object) ((Callable) dt6Var).call();
            if (a06Var == null) {
                wb8Var.a(qx2.INSTANCE);
                wb8Var.onComplete();
                return true;
            }
            try {
                dt6<? extends R> dt6VarApply = xl3Var.apply(a06Var);
                nq5.a(dt6VarApply, "The mapper returned a null Publisher");
                dt6<? extends R> dt6Var2 = dt6VarApply;
                if (!(dt6Var2 instanceof Callable)) {
                    dt6Var2.a(wb8Var);
                    return true;
                }
                try {
                    Object objCall = ((Callable) dt6Var2).call();
                    if (objCall != null) {
                        wb8Var.a(new ld7(wb8Var, objCall));
                        return true;
                    }
                    wb8Var.a(qx2.INSTANCE);
                    wb8Var.onComplete();
                    return true;
                } catch (Throwable th) {
                    m13.d(th);
                    wb8Var.a(qx2.INSTANCE);
                    wb8Var.onError(th);
                    return true;
                }
            } catch (Throwable th2) {
                m13.d(th2);
                wb8Var.a(qx2.INSTANCE);
                wb8Var.onError(th2);
                return true;
            }
        } catch (Throwable th3) {
            m13.d(th3);
            wb8Var.a(qx2.INSTANCE);
            wb8Var.onError(th3);
            return true;
        }
    }
}
