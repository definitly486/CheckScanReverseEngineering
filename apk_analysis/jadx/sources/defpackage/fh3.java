package defpackage;

import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes5.dex */
public final class fh3<T> extends k0<T, T> {
    public final int d;
    public final boolean e;
    public final rm3.d f;

    public static final class a<T> extends ye0<T> implements rh3<T> {
        public final wb8<? super T> b;
        public final hz7<T> c;
        public final h6 d;
        public bc8 e;
        public volatile boolean f;
        public volatile boolean g;
        public Throwable h;
        public final AtomicLong i = new AtomicLong();
        public boolean j;

        public a(wb8 wb8Var, int i, boolean z, rm3.d dVar) {
            this.b = wb8Var;
            this.d = dVar;
            this.c = z ? new n68<>(i) : new m68<>(i);
        }

        @Override // defpackage.wb8
        public final void a(bc8 bc8Var) {
            if (hc8.f(this.e, bc8Var)) {
                this.e = bc8Var;
                this.b.a(this);
                bc8Var.request(Long.MAX_VALUE);
            }
        }

        public final boolean b(boolean z, boolean z2, wb8<? super T> wb8Var) {
            if (this.f) {
                this.c.clear();
                return true;
            }
            if (!z) {
                return false;
            }
            Throwable th = this.h;
            if (th != null) {
                this.c.clear();
                wb8Var.onError(th);
                return true;
            }
            if (!z2) {
                return false;
            }
            wb8Var.onComplete();
            return true;
        }

        @Override // defpackage.bc8
        public final void cancel() {
            if (this.f) {
                return;
            }
            this.f = true;
            this.e.cancel();
            if (this.j || getAndIncrement() != 0) {
                return;
            }
            this.c.clear();
        }

        @Override // defpackage.iz7
        public final void clear() {
            this.c.clear();
        }

        @Override // defpackage.dw6
        public final int d(int i) {
            this.j = true;
            return 2;
        }

        public final void f() {
            if (getAndIncrement() == 0) {
                hz7<T> hz7Var = this.c;
                wb8<? super T> wb8Var = this.b;
                int iAddAndGet = 1;
                while (!b(this.g, hz7Var.isEmpty(), wb8Var)) {
                    long j = this.i.get();
                    long j2 = 0;
                    while (j2 != j) {
                        boolean z = this.g;
                        T tPoll = hz7Var.poll();
                        boolean z2 = tPoll == null;
                        if (b(z, z2, wb8Var)) {
                            return;
                        }
                        if (z2) {
                            break;
                        }
                        wb8Var.onNext(tPoll);
                        j2++;
                    }
                    if (j2 == j && b(this.g, hz7Var.isEmpty(), wb8Var)) {
                        return;
                    }
                    if (j2 != 0 && j != Long.MAX_VALUE) {
                        this.i.addAndGet(-j2);
                    }
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
            }
        }

        @Override // defpackage.iz7
        public final boolean isEmpty() {
            return this.c.isEmpty();
        }

        @Override // defpackage.wb8
        public final void onComplete() {
            this.g = true;
            if (this.j) {
                this.b.onComplete();
            } else {
                f();
            }
        }

        @Override // defpackage.wb8
        public final void onError(Throwable th) {
            this.h = th;
            this.g = true;
            if (this.j) {
                this.b.onError(th);
            } else {
                f();
            }
        }

        @Override // defpackage.wb8
        public final void onNext(T t) {
            if (this.c.offer(t)) {
                if (this.j) {
                    this.b.onNext(null);
                    return;
                } else {
                    f();
                    return;
                }
            }
            this.e.cancel();
            MissingBackpressureException missingBackpressureException = new MissingBackpressureException("Buffer is full");
            try {
                this.d.run();
            } catch (Throwable th) {
                m13.d(th);
                missingBackpressureException.initCause(th);
            }
            onError(missingBackpressureException);
        }

        @Override // defpackage.iz7
        public final T poll() {
            return this.c.poll();
        }

        @Override // defpackage.bc8
        public final void request(long j) {
            if (this.j || !hc8.e(j)) {
                return;
            }
            m00.c(this.i, j);
            f();
        }
    }

    public fh3(ah3 ah3Var, int i) {
        super(ah3Var);
        this.d = i;
        this.e = true;
        this.f = rm3.c;
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super T> wb8Var) {
        this.c.f(new a(wb8Var, this.d, this.e, this.f));
    }
}
