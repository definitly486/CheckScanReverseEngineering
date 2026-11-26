package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class jr5<T> extends tq5<T> {
    public final Iterable<? extends T> b;

    public static final class a<T> extends af0<T> {
        public final ls5<? super T> b;
        public final Iterator<? extends T> c;
        public volatile boolean d;
        public boolean e;
        public boolean f;
        public boolean g;

        public a(ls5<? super T> ls5Var, Iterator<? extends T> it) {
            this.b = ls5Var;
            this.c = it;
        }

        @Override // defpackage.iz7
        public final void clear() {
            this.f = true;
        }

        @Override // defpackage.dw6
        public final int d(int i) {
            this.e = true;
            return 1;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            this.d = true;
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.d;
        }

        @Override // defpackage.iz7
        public final boolean isEmpty() {
            return this.f;
        }

        @Override // defpackage.iz7
        public final T poll() {
            if (this.f) {
                return null;
            }
            boolean z = this.g;
            Iterator<? extends T> it = this.c;
            if (!z) {
                this.g = true;
            } else if (!it.hasNext()) {
                this.f = true;
                return null;
            }
            T next = it.next();
            nq5.a(next, "The iterator returned a null value");
            return next;
        }
    }

    public jr5(Iterable<? extends T> iterable) {
        this.b = iterable;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super T> ls5Var) {
        try {
            Iterator<? extends T> it = this.b.iterator();
            try {
                if (!it.hasNext()) {
                    ls5Var.onSubscribe(hx2.INSTANCE);
                    ls5Var.onComplete();
                    return;
                }
                a aVar = new a(ls5Var, it);
                ls5Var.onSubscribe(aVar);
                if (aVar.e) {
                    return;
                }
                while (!aVar.d) {
                    try {
                        T next = aVar.c.next();
                        nq5.a(next, "The iterator returned a null value");
                        aVar.b.onNext(next);
                        if (aVar.d) {
                            return;
                        }
                        try {
                            if (!aVar.c.hasNext()) {
                                if (aVar.d) {
                                    return;
                                }
                                aVar.b.onComplete();
                                return;
                            }
                        } catch (Throwable th) {
                            m13.d(th);
                            aVar.b.onError(th);
                            return;
                        }
                    } catch (Throwable th2) {
                        m13.d(th2);
                        aVar.b.onError(th2);
                        return;
                    }
                }
            } catch (Throwable th3) {
                m13.d(th3);
                ls5Var.onSubscribe(hx2.INSTANCE);
                ls5Var.onError(th3);
            }
        } catch (Throwable th4) {
            m13.d(th4);
            ls5Var.onSubscribe(hx2.INSTANCE);
            ls5Var.onError(th4);
        }
    }
}
