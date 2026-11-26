package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class qr5<T> extends g1<T, T> {
    public final he7 c;
    public final int d;

    public static final class a<T> extends xe0<T> implements ls5<T>, Runnable {
        public final ls5<? super T> b;
        public final he7.c c;
        public final int d;
        public iz7<T> e;
        public cp2 f;
        public Throwable g;
        public volatile boolean h;
        public volatile boolean i;
        public int j;
        public boolean k;

        public a(ls5 ls5Var, he7.c cVar, int i) {
            this.b = ls5Var;
            this.c = cVar;
            this.d = i;
        }

        public final boolean a(boolean z, boolean z2, ls5<? super T> ls5Var) {
            if (this.i) {
                this.e.clear();
                return true;
            }
            if (!z) {
                return false;
            }
            Throwable th = this.g;
            if (th != null) {
                this.i = true;
                this.e.clear();
                ls5Var.onError(th);
                this.c.dispose();
                return true;
            }
            if (!z2) {
                return false;
            }
            this.i = true;
            ls5Var.onComplete();
            this.c.dispose();
            return true;
        }

        @Override // defpackage.iz7
        public final void clear() {
            this.e.clear();
        }

        @Override // defpackage.dw6
        public final int d(int i) {
            this.k = true;
            return 2;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            if (this.i) {
                return;
            }
            this.i = true;
            this.f.dispose();
            this.c.dispose();
            if (this.k || getAndIncrement() != 0) {
                return;
            }
            this.e.clear();
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.i;
        }

        @Override // defpackage.iz7
        public final boolean isEmpty() {
            return this.e.isEmpty();
        }

        @Override // defpackage.ls5
        public final void onComplete() {
            if (this.h) {
                return;
            }
            this.h = true;
            if (getAndIncrement() == 0) {
                this.c.a(this);
            }
        }

        @Override // defpackage.ls5
        public final void onError(Throwable th) {
            if (this.h) {
                d97.b(th);
                return;
            }
            this.g = th;
            this.h = true;
            if (getAndIncrement() == 0) {
                this.c.a(this);
            }
        }

        @Override // defpackage.ls5
        public final void onNext(T t) {
            if (this.h) {
                return;
            }
            if (this.j != 2) {
                this.e.offer(t);
            }
            if (getAndIncrement() == 0) {
                this.c.a(this);
            }
        }

        @Override // defpackage.ls5
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.i(this.f, cp2Var)) {
                this.f = cp2Var;
                if (cp2Var instanceof yv6) {
                    yv6 yv6Var = (yv6) cp2Var;
                    int iD = yv6Var.d(7);
                    if (iD == 1) {
                        this.j = iD;
                        this.e = yv6Var;
                        this.h = true;
                        this.b.onSubscribe(this);
                        if (getAndIncrement() == 0) {
                            this.c.a(this);
                            return;
                        }
                        return;
                    }
                    if (iD == 2) {
                        this.j = iD;
                        this.e = yv6Var;
                        this.b.onSubscribe(this);
                        return;
                    }
                }
                this.e = new n68(this.d);
                this.b.onSubscribe(this);
            }
        }

        @Override // defpackage.iz7
        public final T poll() {
            return this.e.poll();
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.k) {
                int iAddAndGet = 1;
                while (!this.i) {
                    boolean z = this.h;
                    Throwable th = this.g;
                    if (z && th != null) {
                        this.i = true;
                        this.b.onError(this.g);
                        this.c.dispose();
                        return;
                    }
                    this.b.onNext(null);
                    if (z) {
                        this.i = true;
                        Throwable th2 = this.g;
                        ls5<? super T> ls5Var = this.b;
                        if (th2 != null) {
                            ls5Var.onError(th2);
                        } else {
                            ls5Var.onComplete();
                        }
                        this.c.dispose();
                        return;
                    }
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
                return;
            }
            iz7<T> iz7Var = this.e;
            ls5<? super T> ls5Var2 = this.b;
            int iAddAndGet2 = 1;
            while (!a(this.h, iz7Var.isEmpty(), ls5Var2)) {
                while (true) {
                    boolean z2 = this.h;
                    try {
                        T tPoll = iz7Var.poll();
                        boolean z3 = tPoll == null;
                        if (a(z2, z3, ls5Var2)) {
                            return;
                        }
                        if (z3) {
                            break;
                        } else {
                            ls5Var2.onNext(tPoll);
                        }
                    } catch (Throwable th3) {
                        m13.d(th3);
                        this.i = true;
                        this.f.dispose();
                        iz7Var.clear();
                        ls5Var2.onError(th3);
                        this.c.dispose();
                        return;
                    }
                }
                iAddAndGet2 = addAndGet(-iAddAndGet2);
                if (iAddAndGet2 == 0) {
                    return;
                }
            }
        }
    }

    public qr5(tq5 tq5Var, he7 he7Var, int i) {
        super(tq5Var);
        this.c = he7Var;
        this.d = i;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super T> ls5Var) {
        he7 he7Var = this.c;
        boolean z = he7Var instanceof vy8;
        wr5<T> wr5Var = this.b;
        if (z) {
            wr5Var.a(ls5Var);
        } else {
            wr5Var.a(new a(ls5Var, he7Var.b(), this.d));
        }
    }
}
