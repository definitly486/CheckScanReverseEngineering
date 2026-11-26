package defpackage;

import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes5.dex */
public final class eh3<T> extends k0<T, T> {
    public final he7 d;
    public final int e;

    public static abstract class a<T> extends ye0<T> implements rh3<T>, Runnable {
        public final he7.c b;
        public final int c;
        public final int d;
        public final AtomicLong e = new AtomicLong();
        public bc8 f;
        public iz7<T> g;
        public volatile boolean h;
        public volatile boolean i;
        public Throwable j;
        public int k;
        public long l;
        public boolean m;

        public a(he7.c cVar, int i) {
            this.b = cVar;
            this.c = i;
            this.d = i - (i >> 2);
        }

        public final boolean b(boolean z, boolean z2, wb8<?> wb8Var) {
            if (this.h) {
                clear();
                return true;
            }
            if (!z) {
                return false;
            }
            Throwable th = this.j;
            if (th != null) {
                this.h = true;
                clear();
                wb8Var.onError(th);
                this.b.dispose();
                return true;
            }
            if (!z2) {
                return false;
            }
            this.h = true;
            wb8Var.onComplete();
            this.b.dispose();
            return true;
        }

        @Override // defpackage.bc8
        public final void cancel() {
            if (this.h) {
                return;
            }
            this.h = true;
            this.f.cancel();
            this.b.dispose();
            if (this.m || getAndIncrement() != 0) {
                return;
            }
            this.g.clear();
        }

        @Override // defpackage.iz7
        public final void clear() {
            this.g.clear();
        }

        @Override // defpackage.dw6
        public final int d(int i) {
            this.m = true;
            return 2;
        }

        public abstract void f();

        public abstract void g();

        public abstract void i();

        @Override // defpackage.iz7
        public final boolean isEmpty() {
            return this.g.isEmpty();
        }

        public final void j() {
            if (getAndIncrement() != 0) {
                return;
            }
            this.b.a(this);
        }

        @Override // defpackage.wb8
        public final void onComplete() {
            if (this.i) {
                return;
            }
            this.i = true;
            j();
        }

        @Override // defpackage.wb8
        public final void onError(Throwable th) {
            if (this.i) {
                d97.b(th);
                return;
            }
            this.j = th;
            this.i = true;
            j();
        }

        @Override // defpackage.wb8
        public final void onNext(T t) {
            if (this.i) {
                return;
            }
            if (this.k == 2) {
                j();
                return;
            }
            if (!this.g.offer(t)) {
                this.f.cancel();
                this.j = new MissingBackpressureException("Queue is full?!");
                this.i = true;
            }
            j();
        }

        @Override // defpackage.bc8
        public final void request(long j) {
            if (hc8.e(j)) {
                m00.c(this.e, j);
                j();
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.m) {
                g();
            } else if (this.k == 1) {
                i();
            } else {
                f();
            }
        }
    }

    public static final class b<T> extends a<T> {
        public final gv1<? super T> n;
        public long o;

        public b(gv1 gv1Var, he7.c cVar, int i) {
            super(cVar, i);
            this.n = gv1Var;
        }

        @Override // defpackage.wb8
        public final void a(bc8 bc8Var) {
            if (hc8.f(this.f, bc8Var)) {
                this.f = bc8Var;
                if (bc8Var instanceof mw6) {
                    mw6 mw6Var = (mw6) bc8Var;
                    int iD = mw6Var.d(7);
                    if (iD == 1) {
                        this.k = 1;
                        this.g = mw6Var;
                        this.i = true;
                        this.n.a(this);
                        return;
                    }
                    if (iD == 2) {
                        this.k = 2;
                        this.g = mw6Var;
                        this.n.a(this);
                        bc8Var.request(this.c);
                        return;
                    }
                }
                this.g = new m68(this.c);
                this.n.a(this);
                bc8Var.request(this.c);
            }
        }

        @Override // eh3.a
        public final void f() {
            gv1<? super T> gv1Var = this.n;
            iz7<T> iz7Var = this.g;
            long j = this.l;
            long j2 = this.o;
            int iAddAndGet = 1;
            while (true) {
                long j3 = this.e.get();
                while (j != j3) {
                    boolean z = this.i;
                    try {
                        T tPoll = iz7Var.poll();
                        boolean z2 = tPoll == null;
                        if (b(z, z2, gv1Var)) {
                            return;
                        }
                        if (z2) {
                            break;
                        }
                        if (gv1Var.e(tPoll)) {
                            j++;
                        }
                        j2++;
                        if (j2 == this.d) {
                            this.f.request(j2);
                            j2 = 0;
                        }
                    } catch (Throwable th) {
                        m13.d(th);
                        this.h = true;
                        this.f.cancel();
                        iz7Var.clear();
                        gv1Var.onError(th);
                        this.b.dispose();
                        return;
                    }
                }
                if (j == j3 && b(this.i, iz7Var.isEmpty(), gv1Var)) {
                    return;
                }
                int i = get();
                if (iAddAndGet == i) {
                    this.l = j;
                    this.o = j2;
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    iAddAndGet = i;
                }
            }
        }

        @Override // eh3.a
        public final void g() {
            int iAddAndGet = 1;
            while (!this.h) {
                boolean z = this.i;
                this.n.onNext(null);
                if (z) {
                    this.h = true;
                    Throwable th = this.j;
                    gv1<? super T> gv1Var = this.n;
                    if (th != null) {
                        gv1Var.onError(th);
                    } else {
                        gv1Var.onComplete();
                    }
                    this.b.dispose();
                    return;
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }

        @Override // eh3.a
        public final void i() {
            gv1<? super T> gv1Var = this.n;
            iz7<T> iz7Var = this.g;
            long j = this.l;
            int iAddAndGet = 1;
            while (true) {
                long j2 = this.e.get();
                while (j != j2) {
                    try {
                        T tPoll = iz7Var.poll();
                        if (this.h) {
                            return;
                        }
                        if (tPoll == null) {
                            this.h = true;
                            gv1Var.onComplete();
                            this.b.dispose();
                            return;
                        } else if (gv1Var.e(tPoll)) {
                            j++;
                        }
                    } catch (Throwable th) {
                        m13.d(th);
                        this.h = true;
                        this.f.cancel();
                        gv1Var.onError(th);
                        this.b.dispose();
                        return;
                    }
                }
                if (this.h) {
                    return;
                }
                if (iz7Var.isEmpty()) {
                    this.h = true;
                    gv1Var.onComplete();
                    this.b.dispose();
                    return;
                } else {
                    int i = get();
                    if (iAddAndGet == i) {
                        this.l = j;
                        iAddAndGet = addAndGet(-iAddAndGet);
                        if (iAddAndGet == 0) {
                            return;
                        }
                    } else {
                        iAddAndGet = i;
                    }
                }
            }
        }

        @Override // defpackage.iz7
        public final T poll() {
            T tPoll = this.g.poll();
            if (tPoll != null && this.k != 1) {
                long j = this.o + 1;
                if (j == this.d) {
                    this.o = 0L;
                    this.f.request(j);
                    return tPoll;
                }
                this.o = j;
            }
            return tPoll;
        }
    }

    public static final class c<T> extends a<T> {
        public final wb8<? super T> n;

        public c(wb8 wb8Var, he7.c cVar, int i) {
            super(cVar, i);
            this.n = wb8Var;
        }

        @Override // defpackage.wb8
        public final void a(bc8 bc8Var) {
            if (hc8.f(this.f, bc8Var)) {
                this.f = bc8Var;
                if (bc8Var instanceof mw6) {
                    mw6 mw6Var = (mw6) bc8Var;
                    int iD = mw6Var.d(7);
                    if (iD == 1) {
                        this.k = 1;
                        this.g = mw6Var;
                        this.i = true;
                        this.n.a(this);
                        return;
                    }
                    if (iD == 2) {
                        this.k = 2;
                        this.g = mw6Var;
                        this.n.a(this);
                        bc8Var.request(this.c);
                        return;
                    }
                }
                this.g = new m68(this.c);
                this.n.a(this);
                bc8Var.request(this.c);
            }
        }

        @Override // eh3.a
        public final void f() {
            wb8<? super T> wb8Var = this.n;
            iz7<T> iz7Var = this.g;
            long j = this.l;
            int iAddAndGet = 1;
            while (true) {
                long jAddAndGet = this.e.get();
                while (j != jAddAndGet) {
                    boolean z = this.i;
                    try {
                        T tPoll = iz7Var.poll();
                        boolean z2 = tPoll == null;
                        if (b(z, z2, wb8Var)) {
                            return;
                        }
                        if (z2) {
                            break;
                        }
                        wb8Var.onNext(tPoll);
                        j++;
                        if (j == this.d) {
                            if (jAddAndGet != Long.MAX_VALUE) {
                                jAddAndGet = this.e.addAndGet(-j);
                            }
                            this.f.request(j);
                            j = 0;
                        }
                    } catch (Throwable th) {
                        m13.d(th);
                        this.h = true;
                        this.f.cancel();
                        iz7Var.clear();
                        wb8Var.onError(th);
                        this.b.dispose();
                        return;
                    }
                }
                if (j == jAddAndGet && b(this.i, iz7Var.isEmpty(), wb8Var)) {
                    return;
                }
                int i = get();
                if (iAddAndGet == i) {
                    this.l = j;
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    iAddAndGet = i;
                }
            }
        }

        @Override // eh3.a
        public final void g() {
            int iAddAndGet = 1;
            while (!this.h) {
                boolean z = this.i;
                this.n.onNext(null);
                if (z) {
                    this.h = true;
                    Throwable th = this.j;
                    wb8<? super T> wb8Var = this.n;
                    if (th != null) {
                        wb8Var.onError(th);
                    } else {
                        wb8Var.onComplete();
                    }
                    this.b.dispose();
                    return;
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }

        @Override // eh3.a
        public final void i() {
            wb8<? super T> wb8Var = this.n;
            iz7<T> iz7Var = this.g;
            long j = this.l;
            int iAddAndGet = 1;
            while (true) {
                long j2 = this.e.get();
                while (j != j2) {
                    try {
                        T tPoll = iz7Var.poll();
                        if (this.h) {
                            return;
                        }
                        if (tPoll == null) {
                            this.h = true;
                            wb8Var.onComplete();
                            this.b.dispose();
                            return;
                        }
                        wb8Var.onNext(tPoll);
                        j++;
                    } catch (Throwable th) {
                        m13.d(th);
                        this.h = true;
                        this.f.cancel();
                        wb8Var.onError(th);
                        this.b.dispose();
                        return;
                    }
                }
                if (this.h) {
                    return;
                }
                if (iz7Var.isEmpty()) {
                    this.h = true;
                    wb8Var.onComplete();
                    this.b.dispose();
                    return;
                } else {
                    int i = get();
                    if (iAddAndGet == i) {
                        this.l = j;
                        iAddAndGet = addAndGet(-iAddAndGet);
                        if (iAddAndGet == 0) {
                            return;
                        }
                    } else {
                        iAddAndGet = i;
                    }
                }
            }
        }

        @Override // defpackage.iz7
        public final T poll() {
            T tPoll = this.g.poll();
            if (tPoll != null && this.k != 1) {
                long j = this.l + 1;
                if (j == this.d) {
                    this.l = 0L;
                    this.f.request(j);
                    return tPoll;
                }
                this.l = j;
            }
            return tPoll;
        }
    }

    public eh3(gg3 gg3Var, he7 he7Var, int i) {
        super(gg3Var);
        this.d = he7Var;
        this.e = i;
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super T> wb8Var) {
        he7.c cVarB = this.d.b();
        boolean z = wb8Var instanceof gv1;
        int i = this.e;
        gg3<T> gg3Var = this.c;
        if (z) {
            gg3Var.f(new b((gv1) wb8Var, cVarB, i));
        } else {
            gg3Var.f(new c(wb8Var, cVarB, i));
        }
    }
}
