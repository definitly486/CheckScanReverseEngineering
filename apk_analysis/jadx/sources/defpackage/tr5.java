package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public final class tr5 {

    public static final class a<T> extends AtomicInteger implements yv6<T>, Runnable {
        public final ls5<? super T> b;
        public final T c;

        public a(ls5<? super T> ls5Var, T t) {
            this.b = ls5Var;
            this.c = t;
        }

        @Override // defpackage.iz7
        public final void clear() {
            lazySet(3);
        }

        @Override // defpackage.dw6
        public final int d(int i) {
            lazySet(1);
            return 1;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            set(3);
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return get() == 3;
        }

        @Override // defpackage.iz7
        public final boolean isEmpty() {
            return get() != 1;
        }

        @Override // defpackage.iz7
        public final boolean offer(T t) {
            throw new UnsupportedOperationException("Should not be called!");
        }

        @Override // defpackage.iz7
        public final T poll() {
            if (get() != 1) {
                return null;
            }
            lazySet(3);
            return this.c;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (get() == 0 && compareAndSet(0, 2)) {
                T t = this.c;
                ls5<? super T> ls5Var = this.b;
                ls5Var.onNext(t);
                if (get() == 2) {
                    lazySet(3);
                    ls5Var.onComplete();
                }
            }
        }
    }

    public static final class b<T, R> extends tq5<R> {
        public final T b;
        public final xl3<? super T, ? extends wr5<? extends R>> c;

        public b(T t, xl3<? super T, ? extends wr5<? extends R>> xl3Var) {
            this.b = t;
            this.c = xl3Var;
        }

        @Override // defpackage.tq5
        public final void f(ls5<? super R> ls5Var) {
            try {
                wr5<? extends R> wr5VarApply = this.c.apply(this.b);
                nq5.a(wr5VarApply, "The mapper returned a null ObservableSource");
                wr5<? extends R> wr5Var = wr5VarApply;
                if (!(wr5Var instanceof Callable)) {
                    wr5Var.a(ls5Var);
                    return;
                }
                try {
                    Object objCall = ((Callable) wr5Var).call();
                    if (objCall == null) {
                        ls5Var.onSubscribe(hx2.INSTANCE);
                        ls5Var.onComplete();
                    } else {
                        a aVar = new a(ls5Var, objCall);
                        ls5Var.onSubscribe(aVar);
                        aVar.run();
                    }
                } catch (Throwable th) {
                    m13.d(th);
                    ls5Var.onSubscribe(hx2.INSTANCE);
                    ls5Var.onError(th);
                }
            } catch (Throwable th2) {
                ls5Var.onSubscribe(hx2.INSTANCE);
                ls5Var.onError(th2);
            }
        }
    }

    public static <T, R> boolean a(wr5<T> wr5Var, ls5<? super R> ls5Var, xl3<? super T, ? extends wr5<? extends R>> xl3Var) {
        if (!(wr5Var instanceof Callable)) {
            return false;
        }
        try {
            a06 a06Var = (Object) ((Callable) wr5Var).call();
            if (a06Var == null) {
                ls5Var.onSubscribe(hx2.INSTANCE);
                ls5Var.onComplete();
                return true;
            }
            try {
                wr5<? extends R> wr5VarApply = xl3Var.apply(a06Var);
                nq5.a(wr5VarApply, "The mapper returned a null ObservableSource");
                wr5<? extends R> wr5Var2 = wr5VarApply;
                if (!(wr5Var2 instanceof Callable)) {
                    wr5Var2.a(ls5Var);
                    return true;
                }
                try {
                    Object objCall = ((Callable) wr5Var2).call();
                    if (objCall == null) {
                        ls5Var.onSubscribe(hx2.INSTANCE);
                        ls5Var.onComplete();
                        return true;
                    }
                    a aVar = new a(ls5Var, objCall);
                    ls5Var.onSubscribe(aVar);
                    aVar.run();
                    return true;
                } catch (Throwable th) {
                    m13.d(th);
                    ls5Var.onSubscribe(hx2.INSTANCE);
                    ls5Var.onError(th);
                    return true;
                }
            } catch (Throwable th2) {
                m13.d(th2);
                ls5Var.onSubscribe(hx2.INSTANCE);
                ls5Var.onError(th2);
                return true;
            }
        } catch (Throwable th3) {
            m13.d(th3);
            ls5Var.onSubscribe(hx2.INSTANCE);
            ls5Var.onError(th3);
            return true;
        }
    }
}
