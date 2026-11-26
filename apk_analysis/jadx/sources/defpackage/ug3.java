package defpackage;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class ug3<T, R> extends k0<T, R> {
    public final xl3<? super T, ? extends x75<? extends R>> d;
    public final int e;

    public static final class a<T, R> extends AtomicInteger implements rh3<T>, bc8 {
        public final wb8<? super R> b;
        public final int c;
        public final xl3<? super T, ? extends x75<? extends R>> h;
        public bc8 j;
        public volatile boolean k;
        public final AtomicLong d = new AtomicLong();
        public final fu1 e = new fu1();
        public final pt g = new pt();
        public final AtomicInteger f = new AtomicInteger(1);
        public final AtomicReference<n68<R>> i = new AtomicReference<>();

        /* JADX INFO: renamed from: ug3$a$a, reason: collision with other inner class name */
        public final class C0340a extends AtomicReference<cp2> implements t75<R>, cp2 {
            public C0340a() {
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
                int i = aVar.c;
                AtomicInteger atomicInteger = aVar.f;
                aVar.e.a(this);
                if (aVar.get() == 0) {
                    if (aVar.compareAndSet(0, 1)) {
                        boolean z = atomicInteger.decrementAndGet() == 0;
                        n68<R> n68Var = aVar.i.get();
                        if (!z || (n68Var != null && !n68Var.isEmpty())) {
                            if (i != Integer.MAX_VALUE) {
                                aVar.j.request(1L);
                            }
                            if (aVar.decrementAndGet() == 0) {
                                return;
                            }
                            aVar.f();
                            return;
                        }
                        Throwable thB = k13.b(aVar.g);
                        wb8<? super R> wb8Var = aVar.b;
                        if (thB != null) {
                            wb8Var.onError(thB);
                            return;
                        } else {
                            wb8Var.onComplete();
                            return;
                        }
                    }
                }
                atomicInteger.decrementAndGet();
                if (i != Integer.MAX_VALUE) {
                    aVar.j.request(1L);
                }
                aVar.d();
            }

            @Override // defpackage.t75
            public final void onError(Throwable th) {
                a aVar = a.this;
                fu1 fu1Var = aVar.e;
                fu1Var.a(this);
                if (!k13.a(aVar.g, th)) {
                    d97.b(th);
                    return;
                }
                aVar.j.cancel();
                fu1Var.dispose();
                aVar.f.decrementAndGet();
                aVar.d();
            }

            @Override // defpackage.t75
            public final void onSubscribe(cp2 cp2Var) {
                ip2.g(this, cp2Var);
            }

            /* JADX WARN: Code duplicated, block: B:35:0x007a  */
            /* JADX WARN: Code duplicated, block: B:41:0x008e A[ORIG_RETURN, RETURN] */
            /* JADX WARN: Code duplicated, block: B:47:0x007f A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override // defpackage.t75
            public final void onSuccess(R r) {
                n68<R> n68VarG;
                a aVar = a.this;
                aVar.e.a(this);
                if (aVar.get() == 0) {
                    if (aVar.compareAndSet(0, 1)) {
                        boolean z = aVar.f.decrementAndGet() == 0;
                        if (aVar.d.get() != 0) {
                            aVar.b.onNext(r);
                            n68<R> n68Var = aVar.i.get();
                            if (z && (n68Var == null || n68Var.isEmpty())) {
                                Throwable thB = k13.b(aVar.g);
                                wb8<? super R> wb8Var = aVar.b;
                                if (thB != null) {
                                    wb8Var.onError(thB);
                                    return;
                                } else {
                                    wb8Var.onComplete();
                                    return;
                                }
                            }
                            m00.e(aVar.d, 1L);
                            if (aVar.c != Integer.MAX_VALUE) {
                                aVar.j.request(1L);
                            }
                        } else {
                            n68<R> n68VarG2 = aVar.g();
                            synchronized (n68VarG2) {
                                n68VarG2.offer(r);
                            }
                        }
                        if (aVar.decrementAndGet() == 0) {
                            return;
                        }
                    } else {
                        n68VarG = aVar.g();
                        synchronized (n68VarG) {
                            n68VarG.offer(r);
                        }
                        aVar.f.decrementAndGet();
                        if (aVar.getAndIncrement() != 0) {
                            return;
                        }
                    }
                } else {
                    n68VarG = aVar.g();
                    synchronized (n68VarG) {
                        n68VarG.offer(r);
                        aVar.f.decrementAndGet();
                        if (aVar.getAndIncrement() != 0) {
                            return;
                        }
                    }
                }
                aVar.f();
            }
        }

        public a(wb8 wb8Var, xl3 xl3Var, int i) {
            this.b = wb8Var;
            this.h = xl3Var;
            this.c = i;
        }

        @Override // defpackage.wb8
        public final void a(bc8 bc8Var) {
            if (hc8.f(this.j, bc8Var)) {
                this.j = bc8Var;
                this.b.a(this);
                int i = this.c;
                if (i == Integer.MAX_VALUE) {
                    bc8Var.request(Long.MAX_VALUE);
                } else {
                    bc8Var.request(i);
                }
            }
        }

        public final void b() {
            n68<R> n68Var = this.i.get();
            if (n68Var != null) {
                n68Var.clear();
            }
        }

        @Override // defpackage.bc8
        public final void cancel() {
            this.k = true;
            this.j.cancel();
            this.e.dispose();
        }

        public final void d() {
            if (getAndIncrement() == 0) {
                f();
            }
        }

        public final void f() {
            wb8<? super R> wb8Var = this.b;
            AtomicInteger atomicInteger = this.f;
            AtomicReference<n68<R>> atomicReference = this.i;
            int iAddAndGet = 1;
            do {
                long j = this.d.get();
                long j2 = 0;
                while (true) {
                    if (j2 == j) {
                        break;
                    }
                    if (this.k) {
                        b();
                        return;
                    }
                    if (this.g.get() != null) {
                        Throwable thB = k13.b(this.g);
                        b();
                        wb8Var.onError(thB);
                        return;
                    }
                    boolean z = atomicInteger.get() == 0;
                    n68<R> n68Var = atomicReference.get();
                    a07 a07VarPoll = n68Var != null ? n68Var.poll() : null;
                    boolean z2 = a07VarPoll == null;
                    if (z && z2) {
                        Throwable thB2 = k13.b(this.g);
                        if (thB2 != null) {
                            wb8Var.onError(thB2);
                            return;
                        } else {
                            wb8Var.onComplete();
                            return;
                        }
                    }
                    if (z2) {
                        break;
                    }
                    wb8Var.onNext(a07VarPoll);
                    j2++;
                }
                if (j2 == j) {
                    if (this.k) {
                        b();
                        return;
                    }
                    if (this.g.get() != null) {
                        Throwable thB3 = k13.b(this.g);
                        b();
                        wb8Var.onError(thB3);
                        return;
                    }
                    boolean z3 = atomicInteger.get() == 0;
                    n68<R> n68Var2 = atomicReference.get();
                    boolean z4 = n68Var2 == null || n68Var2.isEmpty();
                    if (z3 && z4) {
                        Throwable thB4 = k13.b(this.g);
                        if (thB4 != null) {
                            wb8Var.onError(thB4);
                            return;
                        } else {
                            wb8Var.onComplete();
                            return;
                        }
                    }
                }
                if (j2 != 0) {
                    m00.e(this.d, j2);
                    if (this.c != Integer.MAX_VALUE) {
                        this.j.request(j2);
                    }
                }
                iAddAndGet = addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }

        public final n68<R> g() {
            while (true) {
                AtomicReference<n68<R>> atomicReference = this.i;
                n68<R> n68Var = atomicReference.get();
                if (n68Var != null) {
                    return n68Var;
                }
                n68<R> n68Var2 = new n68<>(gg3.b);
                while (!atomicReference.compareAndSet(null, n68Var2)) {
                    if (atomicReference.get() != null) {
                    }
                }
                return n68Var2;
            }
        }

        @Override // defpackage.wb8
        public final void onComplete() {
            this.f.decrementAndGet();
            d();
        }

        @Override // defpackage.wb8
        public final void onError(Throwable th) {
            this.f.decrementAndGet();
            if (!k13.a(this.g, th)) {
                d97.b(th);
            } else {
                this.e.dispose();
                d();
            }
        }

        @Override // defpackage.wb8
        public final void onNext(T t) {
            try {
                x75<? extends R> x75VarApply = this.h.apply(t);
                nq5.a(x75VarApply, "The mapper returned a null MaybeSource");
                x75<? extends R> x75Var = x75VarApply;
                this.f.getAndIncrement();
                C0340a c0340a = new C0340a();
                if (this.k || !this.e.b(c0340a)) {
                    return;
                }
                x75Var.a(c0340a);
            } catch (Throwable th) {
                m13.d(th);
                this.j.cancel();
                onError(th);
            }
        }

        @Override // defpackage.bc8
        public final void request(long j) {
            if (hc8.e(j)) {
                m00.c(this.d, j);
                d();
            }
        }
    }

    public ug3(gg3 gg3Var, xl3 xl3Var) {
        super(gg3Var);
        this.d = xl3Var;
        this.e = Integer.MAX_VALUE;
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super R> wb8Var) {
        this.c.f(new a(wb8Var, this.d, this.e));
    }
}
