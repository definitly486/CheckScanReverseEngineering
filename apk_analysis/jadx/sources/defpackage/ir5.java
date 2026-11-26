package defpackage;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class ir5<T, R> extends g1<T, R> {
    public final q01 c;

    public static final class a<T, R> extends AtomicInteger implements ls5<T>, cp2 {
        public final ls5<? super R> b;
        public final xl3<? super T, ? extends x75<? extends R>> f;
        public cp2 h;
        public volatile boolean i;
        public final fu1 c = new fu1();
        public final pt e = new pt();
        public final AtomicInteger d = new AtomicInteger(1);
        public final AtomicReference<n68<R>> g = new AtomicReference<>();

        /* JADX INFO: renamed from: ir5$a$a, reason: collision with other inner class name */
        public final class C0208a extends AtomicReference<cp2> implements t75<R>, cp2 {
            public C0208a() {
            }

            @Override // defpackage.cp2
            public final void dispose() {
                ip2.a(this);
            }

            @Override // defpackage.cp2
            public final boolean isDisposed() {
                return ip2.d(get());
            }

            @Override // defpackage.t75
            public final void onComplete() {
                a aVar = a.this;
                AtomicInteger atomicInteger = aVar.d;
                aVar.c.a(this);
                if (aVar.get() == 0) {
                    if (aVar.compareAndSet(0, 1)) {
                        boolean z = atomicInteger.decrementAndGet() == 0;
                        n68<R> n68Var = aVar.g.get();
                        if (!z || (n68Var != null && !n68Var.isEmpty())) {
                            if (aVar.decrementAndGet() == 0) {
                                return;
                            }
                            aVar.b();
                            return;
                        } else {
                            Throwable thB = k13.b(aVar.e);
                            ls5<? super R> ls5Var = aVar.b;
                            if (thB != null) {
                                ls5Var.onError(thB);
                                return;
                            } else {
                                ls5Var.onComplete();
                                return;
                            }
                        }
                    }
                }
                atomicInteger.decrementAndGet();
                aVar.a();
            }

            @Override // defpackage.t75
            public final void onError(Throwable th) {
                a aVar = a.this;
                fu1 fu1Var = aVar.c;
                fu1Var.a(this);
                if (!k13.a(aVar.e, th)) {
                    d97.b(th);
                    return;
                }
                aVar.h.dispose();
                fu1Var.dispose();
                aVar.d.decrementAndGet();
                aVar.a();
            }

            @Override // defpackage.t75
            public final void onSubscribe(cp2 cp2Var) {
                ip2.g(this, cp2Var);
            }

            /* JADX WARN: Code duplicated, block: B:23:0x004e  */
            /* JADX WARN: Code duplicated, block: B:27:0x005a  */
            /* JADX WARN: Code duplicated, block: B:36:0x0079 A[ORIG_RETURN, RETURN] */
            /* JADX WARN: Code duplicated, block: B:42:0x0081  */
            /* JADX WARN: Code duplicated, block: B:45:0x006a A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:47:0x0058 A[EDGE_INSN: B:47:0x0058->B:26:0x0058 BREAK  A[LOOP:0: B:24:0x0050->B:49:?], SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:48:0x0058 A[EDGE_INSN: B:48:0x0058->B:26:0x0058 BREAK  A[LOOP:0: B:24:0x0050->B:49:?, LOOP_LABEL: LOOP:0: B:24:0x0050->B:49:?], SYNTHETIC] */
            @Override // defpackage.t75
            public final void onSuccess(R r) {
                AtomicReference<n68<R>> atomicReference;
                n68<R> n68Var;
                n68<R> n68Var2;
                a aVar = a.this;
                aVar.c.a(this);
                if (aVar.get() == 0) {
                    if (aVar.compareAndSet(0, 1)) {
                        aVar.b.onNext(r);
                        boolean z = aVar.d.decrementAndGet() == 0;
                        n68<R> n68Var3 = aVar.g.get();
                        if (z && (n68Var3 == null || n68Var3.isEmpty())) {
                            Throwable thB = k13.b(aVar.e);
                            ls5<? super R> ls5Var = aVar.b;
                            if (thB != null) {
                                ls5Var.onError(thB);
                                return;
                            } else {
                                ls5Var.onComplete();
                                return;
                            }
                        }
                        if (aVar.decrementAndGet() == 0) {
                            return;
                        }
                    } else {
                        atomicReference = aVar.g;
                        loop0: while (true) {
                            n68Var = atomicReference.get();
                            if (n68Var != null) {
                                break;
                            }
                            n68Var = new n68<>(gg3.b);
                            do {
                                if (atomicReference.compareAndSet(null, n68Var)) {
                                    break loop0;
                                }
                            } while (atomicReference.get() == null);
                        }
                        n68Var2 = n68Var;
                        synchronized (n68Var2) {
                            n68Var2.offer(r);
                        }
                        aVar.d.decrementAndGet();
                        if (aVar.getAndIncrement() != 0) {
                            return;
                        }
                    }
                } else {
                    atomicReference = aVar.g;
                    loop0: while (true) {
                        n68Var = atomicReference.get();
                        if (n68Var != null) {
                            break;
                            break;
                        }
                        n68Var = new n68<>(gg3.b);
                        do {
                            if (atomicReference.compareAndSet(null, n68Var)) {
                                break loop0;
                                break loop0;
                            }
                        } while (atomicReference.get() == null);
                    }
                    n68Var2 = n68Var;
                    synchronized (n68Var2) {
                        n68Var2.offer(r);
                        aVar.d.decrementAndGet();
                        if (aVar.getAndIncrement() != 0) {
                            return;
                        }
                    }
                }
                aVar.b();
            }
        }

        public a(ls5 ls5Var, q01 q01Var) {
            this.b = ls5Var;
            this.f = q01Var;
        }

        public final void a() {
            if (getAndIncrement() == 0) {
                b();
            }
        }

        public final void b() {
            ls5<? super R> ls5Var = this.b;
            AtomicInteger atomicInteger = this.d;
            AtomicReference<n68<R>> atomicReference = this.g;
            int iAddAndGet = 1;
            while (!this.i) {
                if (this.e.get() != null) {
                    Throwable thB = k13.b(this.e);
                    n68<R> n68Var = this.g.get();
                    if (n68Var != null) {
                        n68Var.clear();
                    }
                    ls5Var.onError(thB);
                    return;
                }
                boolean z = atomicInteger.get() == 0;
                n68<R> n68Var2 = atomicReference.get();
                a07 a07VarPoll = n68Var2 != null ? n68Var2.poll() : null;
                boolean z2 = a07VarPoll == null;
                if (z && z2) {
                    Throwable thB2 = k13.b(this.e);
                    if (thB2 != null) {
                        ls5Var.onError(thB2);
                        return;
                    } else {
                        ls5Var.onComplete();
                        return;
                    }
                }
                if (z2) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    ls5Var.onNext(a07VarPoll);
                }
            }
            n68<R> n68Var3 = this.g.get();
            if (n68Var3 != null) {
                n68Var3.clear();
            }
        }

        @Override // defpackage.cp2
        public final void dispose() {
            this.i = true;
            this.h.dispose();
            this.c.dispose();
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.i;
        }

        @Override // defpackage.ls5
        public final void onComplete() {
            this.d.decrementAndGet();
            a();
        }

        @Override // defpackage.ls5
        public final void onError(Throwable th) {
            this.d.decrementAndGet();
            if (!k13.a(this.e, th)) {
                d97.b(th);
            } else {
                this.c.dispose();
                a();
            }
        }

        @Override // defpackage.ls5
        public final void onNext(T t) {
            try {
                x75<? extends R> x75VarApply = this.f.apply(t);
                nq5.a(x75VarApply, "The mapper returned a null MaybeSource");
                x75<? extends R> x75Var = x75VarApply;
                this.d.getAndIncrement();
                C0208a c0208a = new C0208a();
                if (this.i || !this.c.b(c0208a)) {
                    return;
                }
                x75Var.a(c0208a);
            } catch (Throwable th) {
                m13.d(th);
                this.h.dispose();
                onError(th);
            }
        }

        @Override // defpackage.ls5
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.i(this.h, cp2Var)) {
                this.h = cp2Var;
                this.b.onSubscribe(this);
            }
        }
    }

    public ir5(qr5 qr5Var, q01 q01Var) {
        super(qr5Var);
        this.c = q01Var;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super R> ls5Var) {
        this.b.a(new a(ls5Var, this.c));
    }
}
