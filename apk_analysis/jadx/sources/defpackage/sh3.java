package defpackage;

import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class sh3<T, R> extends k0<T, R> {
    public final l3 d;
    public final int e;

    public static final class a<T, R> extends AtomicReference<bc8> implements rh3<R> {
        public final b<T, R> b;
        public final long c;
        public final int d;
        public volatile iz7<R> e;
        public volatile boolean f;
        public int g;

        public a(b<T, R> bVar, long j, int i) {
            this.b = bVar;
            this.c = j;
            this.d = i;
        }

        @Override // defpackage.wb8
        public final void a(bc8 bc8Var) {
            if (hc8.d(this, bc8Var)) {
                if (bc8Var instanceof mw6) {
                    mw6 mw6Var = (mw6) bc8Var;
                    int iD = mw6Var.d(7);
                    if (iD == 1) {
                        this.g = iD;
                        this.e = mw6Var;
                        this.f = true;
                        this.b.d();
                        return;
                    }
                    if (iD == 2) {
                        this.g = iD;
                        this.e = mw6Var;
                        bc8Var.request(this.d);
                        return;
                    }
                }
                this.e = new m68(this.d);
                bc8Var.request(this.d);
            }
        }

        @Override // defpackage.wb8
        public final void onComplete() {
            b<T, R> bVar = this.b;
            if (this.c == bVar.k) {
                this.f = true;
                bVar.d();
            }
        }

        @Override // defpackage.wb8
        public final void onError(Throwable th) {
            b<T, R> bVar = this.b;
            if (this.c != bVar.k || !k13.a(bVar.f, th)) {
                d97.b(th);
                return;
            }
            bVar.h.cancel();
            bVar.e = true;
            this.f = true;
            bVar.d();
        }

        @Override // defpackage.wb8
        public final void onNext(R r) {
            b<T, R> bVar = this.b;
            if (this.c == bVar.k) {
                if (this.g != 0 || this.e.offer(r)) {
                    bVar.d();
                } else {
                    onError(new MissingBackpressureException("Queue full?!"));
                }
            }
        }
    }

    public static final class b<T, R> extends AtomicInteger implements rh3<T>, bc8 {
        public static final a<Object, Object> l;
        public final wb8<? super R> b;
        public final xl3<? super T, ? extends dt6<? extends R>> c;
        public final int d;
        public volatile boolean e;
        public volatile boolean g;
        public bc8 h;
        public volatile long k;
        public final AtomicReference<a<T, R>> i = new AtomicReference<>();
        public final AtomicLong j = new AtomicLong();
        public final pt f = new pt();

        static {
            a<Object, Object> aVar = new a<>(null, -1L, 1);
            l = aVar;
            hc8.a(aVar);
        }

        public b(wb8 wb8Var, l3 l3Var, int i) {
            this.b = wb8Var;
            this.c = l3Var;
            this.d = i;
        }

        @Override // defpackage.wb8
        public final void a(bc8 bc8Var) {
            if (hc8.f(this.h, bc8Var)) {
                this.h = bc8Var;
                this.b.a(this);
            }
        }

        public final void b() {
            a<T, R> andSet;
            AtomicReference<a<T, R>> atomicReference = this.i;
            a<T, R> aVar = atomicReference.get();
            a<Object, Object> aVar2 = l;
            if (aVar == aVar2 || (andSet = atomicReference.getAndSet((a<T, R>) aVar2)) == aVar2 || andSet == null) {
                return;
            }
            hc8.a(andSet);
        }

        @Override // defpackage.bc8
        public final void cancel() {
            if (this.g) {
                return;
            }
            this.g = true;
            this.h.cancel();
            b();
        }

        public final void d() {
            boolean z;
            long j;
            a07 a07VarPoll;
            if (getAndIncrement() != 0) {
                return;
            }
            wb8<? super R> wb8Var = this.b;
            int iAddAndGet = 1;
            while (!this.g) {
                if (this.e) {
                    if (this.f.get() != null) {
                        b();
                        wb8Var.onError(k13.b(this.f));
                        return;
                    } else if (this.i.get() == null) {
                        wb8Var.onComplete();
                        return;
                    }
                }
                a<T, R> aVar = this.i.get();
                iz7<R> iz7Var = aVar != null ? aVar.e : null;
                if (iz7Var != null) {
                    if (aVar.f) {
                        if (this.f.get() != null) {
                            b();
                            wb8Var.onError(k13.b(this.f));
                            return;
                        } else if (iz7Var.isEmpty()) {
                            AtomicReference<a<T, R>> atomicReference = this.i;
                            while (!atomicReference.compareAndSet(aVar, null) && atomicReference.get() == aVar) {
                            }
                        }
                    }
                    long j2 = this.j.get();
                    long j3 = 0;
                    while (true) {
                        z = false;
                        if (j3 == j2) {
                            j = 0;
                            break;
                        }
                        if (!this.g) {
                            boolean z2 = aVar.f;
                            try {
                                a07VarPoll = iz7Var.poll();
                            } catch (Throwable th) {
                                m13.d(th);
                                hc8.a(aVar);
                                k13.a(this.f, th);
                                z2 = true;
                                a07VarPoll = null;
                            }
                            boolean z3 = a07VarPoll == null;
                            j = 0;
                            if (aVar == this.i.get()) {
                                if (z2) {
                                    if (this.f.get() != null) {
                                        wb8Var.onError(k13.b(this.f));
                                        return;
                                    } else if (z3) {
                                        AtomicReference<a<T, R>> atomicReference2 = this.i;
                                        while (!atomicReference2.compareAndSet(aVar, null) && atomicReference2.get() == aVar) {
                                        }
                                    }
                                }
                                if (z3) {
                                    break;
                                }
                                wb8Var.onNext(a07VarPoll);
                                j3++;
                            }
                            z = true;
                            break;
                        }
                        return;
                    }
                    if (j3 != j && !this.g) {
                        if (j2 != Long.MAX_VALUE) {
                            this.j.addAndGet(-j3);
                        }
                        if (aVar.g != 1) {
                            aVar.get().request(j3);
                        }
                    }
                    if (z) {
                        continue;
                    }
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }

        @Override // defpackage.wb8
        public final void onComplete() {
            if (this.e) {
                return;
            }
            this.e = true;
            d();
        }

        @Override // defpackage.wb8
        public final void onError(Throwable th) {
            if (this.e || !k13.a(this.f, th)) {
                d97.b(th);
                return;
            }
            b();
            this.e = true;
            d();
        }

        @Override // defpackage.wb8
        public final void onNext(T t) {
            if (this.e) {
                return;
            }
            long j = this.k + 1;
            this.k = j;
            a<T, R> aVar = this.i.get();
            if (aVar != null) {
                hc8.a(aVar);
            }
            try {
                dt6<? extends R> dt6VarApply = this.c.apply(t);
                nq5.a(dt6VarApply, "The publisher returned is null");
                dt6<? extends R> dt6Var = dt6VarApply;
                a<T, R> aVar2 = new a<>(this, j, this.d);
                while (true) {
                    a<T, R> aVar3 = this.i.get();
                    if (aVar3 == l) {
                        return;
                    }
                    AtomicReference<a<T, R>> atomicReference = this.i;
                    do {
                        if (atomicReference.compareAndSet(aVar3, aVar2)) {
                            dt6Var.a(aVar2);
                            return;
                        }
                    } while (atomicReference.get() == aVar3);
                }
            } catch (Throwable th) {
                m13.d(th);
                this.h.cancel();
                onError(th);
            }
        }

        @Override // defpackage.bc8
        public final void request(long j) {
            if (hc8.e(j)) {
                m00.c(this.j, j);
                if (this.k == 0) {
                    this.h.request(Long.MAX_VALUE);
                } else {
                    d();
                }
            }
        }
    }

    public sh3(ng3 ng3Var, l3 l3Var, int i) {
        super(ng3Var);
        this.d = l3Var;
        this.e = i;
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super R> wb8Var) {
        gg3<T> gg3Var = this.c;
        l3 l3Var = this.d;
        if (nh3.a(gg3Var, wb8Var, l3Var)) {
            return;
        }
        gg3Var.f(new b(wb8Var, l3Var, this.e));
    }
}
