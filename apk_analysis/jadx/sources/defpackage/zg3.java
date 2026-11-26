package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class zg3<T> extends gg3<T> {
    public final Iterable<? extends T> c;

    public static abstract class a<T> extends bf0<T> {
        public Iterator<? extends T> b;
        public volatile boolean c;
        public boolean d;

        public a(Iterator<? extends T> it) {
            this.b = it;
        }

        public abstract void a();

        public abstract void b(long j);

        @Override // defpackage.bc8
        public final void cancel() {
            this.c = true;
        }

        @Override // defpackage.iz7
        public final void clear() {
            this.b = null;
        }

        @Override // defpackage.dw6
        public final int d(int i) {
            return 1;
        }

        @Override // defpackage.iz7
        public final boolean isEmpty() {
            Iterator<? extends T> it = this.b;
            return it == null || !it.hasNext();
        }

        @Override // defpackage.iz7
        public final T poll() {
            Iterator<? extends T> it = this.b;
            if (it == null) {
                return null;
            }
            if (!this.d) {
                this.d = true;
            } else if (!it.hasNext()) {
                return null;
            }
            T next = this.b.next();
            nq5.a(next, "Iterator.next() returned a null value");
            return next;
        }

        @Override // defpackage.bc8
        public final void request(long j) {
            if (hc8.e(j) && m00.c(this, j) == 0) {
                if (j == Long.MAX_VALUE) {
                    a();
                } else {
                    b(j);
                }
            }
        }
    }

    public static final class b<T> extends a<T> {
        public final gv1<? super T> e;

        public b(gv1<? super T> gv1Var, Iterator<? extends T> it) {
            super(it);
            this.e = gv1Var;
        }

        @Override // zg3.a
        public final void a() {
            Iterator<? extends T> it = this.b;
            gv1<? super T> gv1Var = this.e;
            while (!this.c) {
                try {
                    T next = it.next();
                    if (this.c) {
                        return;
                    }
                    if (next == null) {
                        gv1Var.onError(new NullPointerException("Iterator.next() returned a null value"));
                        return;
                    }
                    gv1Var.e(next);
                    if (this.c) {
                        return;
                    }
                    try {
                        if (!it.hasNext()) {
                            if (this.c) {
                                return;
                            }
                            gv1Var.onComplete();
                            return;
                        }
                    } catch (Throwable th) {
                        m13.d(th);
                        gv1Var.onError(th);
                        return;
                    }
                } catch (Throwable th2) {
                    m13.d(th2);
                    gv1Var.onError(th2);
                    return;
                }
            }
        }

        @Override // zg3.a
        public final void b(long j) {
            Iterator<? extends T> it = this.b;
            gv1<? super T> gv1Var = this.e;
            do {
                long j2 = 0;
                while (true) {
                    if (j2 == j) {
                        j = get();
                        if (j2 == j) {
                            break;
                        }
                    } else {
                        if (this.c) {
                            return;
                        }
                        try {
                            T next = it.next();
                            if (this.c) {
                                return;
                            }
                            if (next == null) {
                                gv1Var.onError(new NullPointerException("Iterator.next() returned a null value"));
                                return;
                            }
                            boolean zE = gv1Var.e(next);
                            if (this.c) {
                                return;
                            }
                            try {
                                if (!it.hasNext()) {
                                    if (this.c) {
                                        return;
                                    }
                                    gv1Var.onComplete();
                                    return;
                                } else if (zE) {
                                    j2++;
                                }
                            } catch (Throwable th) {
                                m13.d(th);
                                gv1Var.onError(th);
                                return;
                            }
                        } catch (Throwable th2) {
                            m13.d(th2);
                            gv1Var.onError(th2);
                            return;
                        }
                    }
                }
                j = addAndGet(-j2);
            } while (j != 0);
        }
    }

    public static final class c<T> extends a<T> {
        public final wb8<? super T> e;

        public c(wb8<? super T> wb8Var, Iterator<? extends T> it) {
            super(it);
            this.e = wb8Var;
        }

        @Override // zg3.a
        public final void a() {
            Iterator<? extends T> it = this.b;
            wb8<? super T> wb8Var = this.e;
            while (!this.c) {
                try {
                    T next = it.next();
                    if (this.c) {
                        return;
                    }
                    if (next == null) {
                        wb8Var.onError(new NullPointerException("Iterator.next() returned a null value"));
                        return;
                    }
                    wb8Var.onNext(next);
                    if (this.c) {
                        return;
                    }
                    try {
                        if (!it.hasNext()) {
                            if (this.c) {
                                return;
                            }
                            wb8Var.onComplete();
                            return;
                        }
                    } catch (Throwable th) {
                        m13.d(th);
                        wb8Var.onError(th);
                        return;
                    }
                } catch (Throwable th2) {
                    m13.d(th2);
                    wb8Var.onError(th2);
                    return;
                }
            }
        }

        @Override // zg3.a
        public final void b(long j) {
            Iterator<? extends T> it = this.b;
            wb8<? super T> wb8Var = this.e;
            do {
                long j2 = 0;
                while (true) {
                    if (j2 == j) {
                        j = get();
                        if (j2 == j) {
                            break;
                        }
                    } else {
                        if (this.c) {
                            return;
                        }
                        try {
                            T next = it.next();
                            if (this.c) {
                                return;
                            }
                            if (next == null) {
                                wb8Var.onError(new NullPointerException("Iterator.next() returned a null value"));
                                return;
                            }
                            wb8Var.onNext(next);
                            if (this.c) {
                                return;
                            }
                            try {
                                if (!it.hasNext()) {
                                    if (this.c) {
                                        return;
                                    }
                                    wb8Var.onComplete();
                                    return;
                                }
                                j2++;
                            } catch (Throwable th) {
                                m13.d(th);
                                wb8Var.onError(th);
                                return;
                            }
                        } catch (Throwable th2) {
                            m13.d(th2);
                            wb8Var.onError(th2);
                            return;
                        }
                    }
                }
                j = addAndGet(-j2);
            } while (j != 0);
        }
    }

    public zg3(Iterable<? extends T> iterable) {
        this.c = iterable;
    }

    public static <T> void i(wb8<? super T> wb8Var, Iterator<? extends T> it) {
        try {
            if (!it.hasNext()) {
                wb8Var.a(qx2.INSTANCE);
                wb8Var.onComplete();
            } else if (wb8Var instanceof gv1) {
                wb8Var.a(new b((gv1) wb8Var, it));
            } else {
                wb8Var.a(new c(wb8Var, it));
            }
        } catch (Throwable th) {
            m13.d(th);
            wb8Var.a(qx2.INSTANCE);
            wb8Var.onError(th);
        }
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super T> wb8Var) {
        try {
            i(wb8Var, this.c.iterator());
        } catch (Throwable th) {
            m13.d(th);
            wb8Var.a(qx2.INSTANCE);
            wb8Var.onError(th);
        }
    }
}
