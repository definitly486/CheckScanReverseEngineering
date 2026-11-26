package defpackage;

import io.reactivex.exceptions.CompositeException;

/* JADX INFO: loaded from: classes5.dex */
public final class ng3<T> extends k0<T, T> {
    public final qx1<? super T> d;
    public final rm3.e e;
    public final rm3.d f;
    public final rm3.d g;

    public static final class a<T> extends ue0<T, T> {
        public final qx1<? super T> g;
        public final qx1<? super Throwable> h;
        public final h6 i;
        public final h6 j;

        public a(gv1 gv1Var, qx1 qx1Var, rm3.e eVar, rm3.d dVar, rm3.d dVar2) {
            super(gv1Var);
            this.g = qx1Var;
            this.h = eVar;
            this.i = dVar;
            this.j = dVar2;
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // defpackage.gv1
        public final boolean e(T t) {
            if (this.e) {
                return false;
            }
            try {
                this.g.accept(t);
                return this.b.e((Object) t);
            } catch (Throwable th) {
                b(th);
                return false;
            }
        }

        @Override // defpackage.ue0, defpackage.wb8
        public final void onComplete() {
            if (this.e) {
                return;
            }
            try {
                this.i.run();
                this.e = true;
                this.b.onComplete();
                try {
                    this.j.run();
                } catch (Throwable th) {
                    m13.d(th);
                    d97.b(th);
                }
            } catch (Throwable th2) {
                b(th2);
            }
        }

        @Override // defpackage.ue0, defpackage.wb8
        public final void onError(Throwable th) {
            wb8 wb8Var = this.b;
            if (this.e) {
                d97.b(th);
                return;
            }
            this.e = true;
            try {
                this.h.accept(th);
                wb8Var.onError(th);
            } catch (Throwable th2) {
                m13.d(th2);
                wb8Var.onError(new CompositeException(th, th2));
            }
            try {
                this.j.run();
            } catch (Throwable th3) {
                m13.d(th3);
                d97.b(th3);
            }
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // defpackage.wb8
        public final void onNext(T t) {
            if (this.e) {
                return;
            }
            int i = this.f;
            gv1<? super R> gv1Var = this.b;
            if (i != 0) {
                gv1Var.onNext(null);
                return;
            }
            try {
                this.g.accept(t);
                gv1Var.onNext((Object) t);
            } catch (Throwable th) {
                b(th);
            }
        }

        @Override // defpackage.iz7
        public final T poll() throws Exception {
            qx1<? super Throwable> qx1Var = this.h;
            try {
                T tPoll = this.d.poll();
                h6 h6Var = this.j;
                if (tPoll == null) {
                    if (this.f == 1) {
                        this.i.run();
                        h6Var.run();
                    }
                    return tPoll;
                }
                try {
                    this.g.accept(tPoll);
                    h6Var.run();
                    return tPoll;
                } catch (Throwable th) {
                    try {
                        m13.d(th);
                        try {
                            qx1Var.accept(th);
                            k13.a aVar = k13.a;
                            if (th instanceof Exception) {
                                throw th;
                            }
                            throw th;
                        } catch (Throwable th2) {
                            throw new CompositeException(th, th2);
                        }
                    } catch (Throwable th3) {
                        h6Var.run();
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                m13.d(th4);
                try {
                    qx1Var.accept(th4);
                    k13.a aVar2 = k13.a;
                    if (th4 instanceof Exception) {
                        throw th4;
                    }
                    throw th4;
                } catch (Throwable th5) {
                    throw new CompositeException(th4, th5);
                }
            }
        }
    }

    public static final class b<T> extends we0<T, T> {
        public final qx1<? super T> g;
        public final qx1<? super Throwable> h;
        public final h6 i;
        public final h6 j;

        public b(wb8 wb8Var, qx1 qx1Var, rm3.e eVar, rm3.d dVar, rm3.d dVar2) {
            super(wb8Var);
            this.g = qx1Var;
            this.h = eVar;
            this.i = dVar;
            this.j = dVar2;
        }

        @Override // defpackage.we0, defpackage.wb8
        public final void onComplete() {
            if (this.e) {
                return;
            }
            try {
                this.i.run();
                this.e = true;
                this.b.onComplete();
                try {
                    this.j.run();
                } catch (Throwable th) {
                    m13.d(th);
                    d97.b(th);
                }
            } catch (Throwable th2) {
                b(th2);
            }
        }

        @Override // defpackage.we0, defpackage.wb8
        public final void onError(Throwable th) {
            wb8<? super R> wb8Var = this.b;
            if (this.e) {
                d97.b(th);
                return;
            }
            this.e = true;
            try {
                this.h.accept(th);
                wb8Var.onError(th);
            } catch (Throwable th2) {
                m13.d(th2);
                wb8Var.onError(new CompositeException(th, th2));
            }
            try {
                this.j.run();
            } catch (Throwable th3) {
                m13.d(th3);
                d97.b(th3);
            }
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // defpackage.wb8
        public final void onNext(T t) {
            if (this.e) {
                return;
            }
            int i = this.f;
            wb8<? super R> wb8Var = this.b;
            if (i != 0) {
                wb8Var.onNext(null);
                return;
            }
            try {
                this.g.accept(t);
                wb8Var.onNext((Object) t);
            } catch (Throwable th) {
                b(th);
            }
        }

        @Override // defpackage.iz7
        public final T poll() throws Exception {
            qx1<? super Throwable> qx1Var = this.h;
            try {
                T tPoll = this.d.poll();
                h6 h6Var = this.j;
                if (tPoll == null) {
                    if (this.f == 1) {
                        this.i.run();
                        h6Var.run();
                    }
                    return tPoll;
                }
                try {
                    this.g.accept(tPoll);
                    h6Var.run();
                    return tPoll;
                } catch (Throwable th) {
                    try {
                        m13.d(th);
                        try {
                            qx1Var.accept(th);
                            k13.a aVar = k13.a;
                            if (th instanceof Exception) {
                                throw th;
                            }
                            throw th;
                        } catch (Throwable th2) {
                            throw new CompositeException(th, th2);
                        }
                    } catch (Throwable th3) {
                        h6Var.run();
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                m13.d(th4);
                try {
                    qx1Var.accept(th4);
                    k13.a aVar2 = k13.a;
                    if (th4 instanceof Exception) {
                        throw th4;
                    }
                    throw th4;
                } catch (Throwable th5) {
                    throw new CompositeException(th4, th5);
                }
            }
        }
    }

    public ng3(gg3 gg3Var, qx1 qx1Var) {
        super(gg3Var);
        this.d = qx1Var;
        this.e = rm3.d;
        rm3.d dVar = rm3.c;
        this.f = dVar;
        this.g = dVar;
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super T> wb8Var) {
        boolean z = wb8Var instanceof gv1;
        gg3<T> gg3Var = this.c;
        qx1<? super T> qx1Var = this.d;
        if (z) {
            gg3Var.f(new a((gv1) wb8Var, qx1Var, this.e, this.f, this.g));
        } else {
            gg3Var.f(new b(wb8Var, qx1Var, this.e, this.f, this.g));
        }
    }
}
