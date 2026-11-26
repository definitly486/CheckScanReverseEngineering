package defpackage;

import io.reactivex.exceptions.MissingBackpressureException;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class wg3<T, R> extends k0<T, R> {
    public final rm3.i d;
    public final int e;

    public static final class a<T, R> extends ye0<R> implements rh3<T> {
        public final wb8<? super R> b;
        public final xl3<? super T, ? extends Iterable<? extends R>> c;
        public final int d;
        public final int e;
        public bc8 g;
        public iz7<T> h;
        public volatile boolean i;
        public volatile boolean j;
        public Iterator<? extends R> l;
        public int m;
        public int n;
        public final AtomicReference<Throwable> k = new AtomicReference<>();
        public final AtomicLong f = new AtomicLong();

        public a(wb8 wb8Var, rm3.i iVar, int i) {
            this.b = wb8Var;
            this.c = iVar;
            this.d = i;
            this.e = i - (i >> 2);
        }

        @Override // defpackage.wb8
        public final void a(bc8 bc8Var) {
            if (hc8.f(this.g, bc8Var)) {
                this.g = bc8Var;
                if (bc8Var instanceof mw6) {
                    mw6 mw6Var = (mw6) bc8Var;
                    int iD = mw6Var.d(3);
                    if (iD == 1) {
                        this.n = iD;
                        this.h = mw6Var;
                        this.i = true;
                        this.b.a(this);
                        return;
                    }
                    if (iD == 2) {
                        this.n = iD;
                        this.h = mw6Var;
                        this.b.a(this);
                        bc8Var.request(this.d);
                        return;
                    }
                }
                this.h = new m68(this.d);
                this.b.a(this);
                bc8Var.request(this.d);
            }
        }

        public final boolean b(boolean z, boolean z2, wb8<?> wb8Var, iz7<?> iz7Var) {
            if (this.j) {
                this.l = null;
                iz7Var.clear();
                return true;
            }
            if (!z) {
                return false;
            }
            if (this.k.get() == null) {
                if (!z2) {
                    return false;
                }
                wb8Var.onComplete();
                return true;
            }
            Throwable thB = k13.b(this.k);
            this.l = null;
            iz7Var.clear();
            wb8Var.onError(thB);
            return true;
        }

        @Override // defpackage.bc8
        public final void cancel() {
            if (this.j) {
                return;
            }
            this.j = true;
            this.g.cancel();
            if (getAndIncrement() == 0) {
                this.h.clear();
            }
        }

        @Override // defpackage.iz7
        public final void clear() {
            this.l = null;
            this.h.clear();
        }

        @Override // defpackage.dw6
        public final int d(int i) {
            return this.n == 1 ? 1 : 0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void f() {
            int i;
            if (getAndIncrement() != 0) {
                return;
            }
            wb8<?> wb8Var = this.b;
            iz7<T> iz7Var = this.h;
            boolean z = false;
            int i2 = 1;
            Object[] objArr = this.n != 1;
            Iterator<? extends R> it = this.l;
            int iAddAndGet = 1;
            while (true) {
                if (it == null) {
                    boolean z2 = this.i;
                    try {
                        T tPoll = iz7Var.poll();
                        if (b(z2, tPoll == null ? i2 : z ? 1 : 0, wb8Var, iz7Var)) {
                            return;
                        }
                        if (tPoll != null) {
                            try {
                                it = this.c.apply(tPoll).iterator();
                                if (it.hasNext()) {
                                    this.l = it;
                                } else {
                                    if (objArr != false) {
                                        int i3 = this.m + i2;
                                        if (i3 == this.e) {
                                            this.m = z ? 1 : 0;
                                            this.g.request(i3);
                                        } else {
                                            this.m = i3;
                                        }
                                    }
                                    it = null;
                                }
                            } catch (Throwable th) {
                                m13.d(th);
                                this.g.cancel();
                                k13.a(this.k, th);
                                wb8Var.onError(k13.b(this.k));
                                return;
                            }
                        }
                    } catch (Throwable th2) {
                        m13.d(th2);
                        this.g.cancel();
                        k13.a(this.k, th2);
                        Throwable thB = k13.b(this.k);
                        this.l = null;
                        iz7Var.clear();
                        wb8Var.onError(thB);
                        return;
                    }
                }
                if (it != null) {
                    long j = this.f.get();
                    long j2 = 0;
                    while (true) {
                        if (j2 == j) {
                            i = i2;
                            break;
                        }
                        if (b(this.i, z, wb8Var, iz7Var)) {
                            return;
                        }
                        try {
                            R next = it.next();
                            i = i2;
                            nq5.a(next, "The iterator returned a null value");
                            wb8Var.onNext(next);
                            if (b(this.i, z, wb8Var, iz7Var)) {
                                return;
                            }
                            j2++;
                            try {
                                if (!it.hasNext()) {
                                    if (objArr != false) {
                                        int i4 = this.m + 1;
                                        if (i4 == this.e) {
                                            this.m = z ? 1 : 0;
                                            this.g.request(i4);
                                        } else {
                                            this.m = i4;
                                        }
                                    }
                                    this.l = null;
                                    it = null;
                                    break;
                                }
                                i2 = i;
                            } catch (Throwable th3) {
                                m13.d(th3);
                                this.l = null;
                                this.g.cancel();
                                k13.a(this.k, th3);
                                wb8Var.onError(k13.b(this.k));
                                return;
                            }
                        } catch (Throwable th4) {
                            m13.d(th4);
                            this.l = null;
                            this.g.cancel();
                            k13.a(this.k, th4);
                            wb8Var.onError(k13.b(this.k));
                            return;
                        }
                    }
                    if (j2 == j) {
                        if (b(this.i, (iz7Var.isEmpty() && it == null) ? i : 0, wb8Var, iz7Var)) {
                            return;
                        }
                    }
                    if (j2 != 0 && j != Long.MAX_VALUE) {
                        this.f.addAndGet(-j2);
                    }
                    if (it != null) {
                    }
                    i2 = i;
                    z = false;
                } else {
                    i = i2;
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
                i2 = i;
                z = false;
            }
        }

        @Override // defpackage.iz7
        public final boolean isEmpty() {
            return this.l == null && this.h.isEmpty();
        }

        @Override // defpackage.wb8
        public final void onComplete() {
            if (this.i) {
                return;
            }
            this.i = true;
            f();
        }

        @Override // defpackage.wb8
        public final void onError(Throwable th) {
            if (this.i || !k13.a(this.k, th)) {
                d97.b(th);
            } else {
                this.i = true;
                f();
            }
        }

        @Override // defpackage.wb8
        public final void onNext(T t) {
            if (this.i) {
                return;
            }
            if (this.n != 0 || this.h.offer(t)) {
                f();
            } else {
                onError(new MissingBackpressureException("Queue is full?!"));
            }
        }

        @Override // defpackage.iz7
        public final R poll() {
            Iterator<? extends R> it = this.l;
            while (it == null) {
                T tPoll = this.h.poll();
                if (tPoll != null) {
                    it = this.c.apply(tPoll).iterator();
                    if (it.hasNext()) {
                        this.l = it;
                        break;
                    }
                    it = null;
                } else {
                    return null;
                }
            }
            R next = it.next();
            nq5.a(next, "The iterator returned a null value");
            if (!it.hasNext()) {
                this.l = null;
            }
            return next;
        }

        @Override // defpackage.bc8
        public final void request(long j) {
            if (hc8.e(j)) {
                m00.c(this.f, j);
                f();
            }
        }
    }

    public wg3(dh3 dh3Var, int i) {
        super(dh3Var);
        this.d = rm3.a;
        this.e = i;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // defpackage.gg3
    public final void g(wb8<? super R> wb8Var) {
        gg3<T> gg3Var = this.c;
        boolean z = gg3Var instanceof Callable;
        rm3.i iVar = this.d;
        if (!z) {
            gg3Var.f(new a(wb8Var, iVar, this.e));
            return;
        }
        try {
            Object objCall = ((Callable) gg3Var).call();
            if (objCall == null) {
                wb8Var.a(qx2.INSTANCE);
                wb8Var.onComplete();
                return;
            }
            try {
                iVar.getClass();
                zg3.i(wb8Var, ((Iterable) objCall).iterator());
            } catch (Throwable th) {
                m13.d(th);
                wb8Var.a(qx2.INSTANCE);
                wb8Var.onError(th);
            }
        } catch (Throwable th2) {
            m13.d(th2);
            wb8Var.a(qx2.INSTANCE);
            wb8Var.onError(th2);
        }
    }
}
