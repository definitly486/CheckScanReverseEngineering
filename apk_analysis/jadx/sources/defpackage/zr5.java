package defpackage;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class zr5<T, R> extends g1<T, R> {
    public final w3 c;
    public final int d;

    public static final class a<T, R> extends AtomicReference<cp2> implements ls5<R> {
        public final b<T, R> b;
        public final long c;
        public final int d;
        public volatile iz7<R> e;
        public volatile boolean f;

        public a(b<T, R> bVar, long j, int i) {
            this.b = bVar;
            this.c = j;
            this.d = i;
        }

        @Override // defpackage.ls5
        public final void onComplete() {
            if (this.c == this.b.j) {
                this.f = true;
                this.b.b();
            }
        }

        @Override // defpackage.ls5
        public final void onError(Throwable th) {
            b<T, R> bVar = this.b;
            bVar.getClass();
            if (this.c != bVar.j || !k13.a(bVar.e, th)) {
                d97.b(th);
                return;
            }
            bVar.h.dispose();
            bVar.f = true;
            this.f = true;
            bVar.b();
        }

        @Override // defpackage.ls5
        public final void onNext(R r) {
            if (this.c == this.b.j) {
                if (r != null) {
                    this.e.offer(r);
                }
                this.b.b();
            }
        }

        @Override // defpackage.ls5
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.g(this, cp2Var)) {
                if (cp2Var instanceof yv6) {
                    yv6 yv6Var = (yv6) cp2Var;
                    int iD = yv6Var.d(7);
                    if (iD == 1) {
                        this.e = yv6Var;
                        this.f = true;
                        this.b.b();
                        return;
                    } else if (iD == 2) {
                        this.e = yv6Var;
                        return;
                    }
                }
                this.e = new n68(this.d);
            }
        }
    }

    public static final class b<T, R> extends AtomicInteger implements ls5<T>, cp2 {
        public static final a<Object, Object> k;
        public final ls5<? super R> b;
        public final xl3<? super T, ? extends wr5<? extends R>> c;
        public final int d;
        public volatile boolean f;
        public volatile boolean g;
        public cp2 h;
        public volatile long j;
        public final AtomicReference<a<T, R>> i = new AtomicReference<>();
        public final pt e = new pt();

        static {
            a<Object, Object> aVar = new a<>(null, -1L, 1);
            k = aVar;
            ip2.a(aVar);
        }

        public b(ls5 ls5Var, w3 w3Var, int i) {
            this.b = ls5Var;
            this.c = w3Var;
            this.d = i;
        }

        public final void a() {
            a<T, R> andSet;
            AtomicReference<a<T, R>> atomicReference = this.i;
            a<T, R> aVar = atomicReference.get();
            a<Object, Object> aVar2 = k;
            if (aVar == aVar2 || (andSet = atomicReference.getAndSet((a<T, R>) aVar2)) == aVar2 || andSet == null) {
                return;
            }
            ip2.a(andSet);
        }

        /* JADX WARN: Code duplicated, block: B:92:0x00e2 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:95:0x000e A[SYNTHETIC] */
        public final void b() {
            iz7<R> iz7Var;
            a07 a07VarPoll;
            if (getAndIncrement() != 0) {
                return;
            }
            ls5<? super R> ls5Var = this.b;
            AtomicReference<a<T, R>> atomicReference = this.i;
            int iAddAndGet = 1;
            while (!this.g) {
                if (this.f) {
                    boolean z = atomicReference.get() == null;
                    if (this.e.get() != null) {
                        ls5Var.onError(k13.b(this.e));
                        return;
                    } else if (z) {
                        ls5Var.onComplete();
                        return;
                    }
                }
                a<T, R> aVar = atomicReference.get();
                if (aVar != null && (iz7Var = aVar.e) != null) {
                    if (aVar.f) {
                        boolean zIsEmpty = iz7Var.isEmpty();
                        if (this.e.get() != null) {
                            ls5Var.onError(k13.b(this.e));
                            return;
                        } else if (zIsEmpty) {
                            while (!atomicReference.compareAndSet(aVar, null) && atomicReference.get() == aVar) {
                            }
                        }
                    }
                    boolean z2 = false;
                    while (!this.g) {
                        if (aVar == atomicReference.get()) {
                            if (this.e.get() != null) {
                                ls5Var.onError(k13.b(this.e));
                                return;
                            }
                            boolean z3 = aVar.f;
                            try {
                                a07VarPoll = iz7Var.poll();
                            } catch (Throwable th) {
                                m13.d(th);
                                k13.a(this.e, th);
                                while (!atomicReference.compareAndSet(aVar, null) && atomicReference.get() == aVar) {
                                }
                                a();
                                this.h.dispose();
                                this.f = true;
                                z2 = true;
                                a07VarPoll = null;
                            }
                            boolean z4 = a07VarPoll == null;
                            if (z3 && z4) {
                                while (!atomicReference.compareAndSet(aVar, null) && atomicReference.get() == aVar) {
                                }
                            } else if (!z4) {
                                ls5Var.onNext(a07VarPoll);
                            }
                            if (z2) {
                                continue;
                            }
                        }
                        z2 = true;
                        if (z2) {
                            continue;
                        }
                    }
                    return;
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }

        @Override // defpackage.cp2
        public final void dispose() {
            if (this.g) {
                return;
            }
            this.g = true;
            this.h.dispose();
            a();
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.g;
        }

        @Override // defpackage.ls5
        public final void onComplete() {
            if (this.f) {
                return;
            }
            this.f = true;
            b();
        }

        @Override // defpackage.ls5
        public final void onError(Throwable th) {
            if (this.f || !k13.a(this.e, th)) {
                d97.b(th);
                return;
            }
            a();
            this.f = true;
            b();
        }

        @Override // defpackage.ls5
        public final void onNext(T t) {
            long j = this.j + 1;
            this.j = j;
            a<T, R> aVar = this.i.get();
            if (aVar != null) {
                ip2.a(aVar);
            }
            try {
                wr5<? extends R> wr5VarApply = this.c.apply(t);
                nq5.a(wr5VarApply, "The ObservableSource returned is null");
                wr5<? extends R> wr5Var = wr5VarApply;
                a<T, R> aVar2 = new a<>(this, j, this.d);
                while (true) {
                    a<T, R> aVar3 = this.i.get();
                    if (aVar3 == k) {
                        return;
                    }
                    AtomicReference<a<T, R>> atomicReference = this.i;
                    do {
                        if (atomicReference.compareAndSet(aVar3, aVar2)) {
                            wr5Var.a(aVar2);
                            return;
                        }
                    } while (atomicReference.get() == aVar3);
                }
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

    public zr5(zq5 zq5Var, w3 w3Var, int i) {
        super(zq5Var);
        this.c = w3Var;
        this.d = i;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super R> ls5Var) {
        wr5<T> wr5Var = this.b;
        w3 w3Var = this.c;
        if (tr5.a(wr5Var, ls5Var, w3Var)) {
            return;
        }
        wr5Var.a(new b(ls5Var, w3Var, this.d));
    }
}
