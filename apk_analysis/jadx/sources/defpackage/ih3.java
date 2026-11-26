package defpackage;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class ih3<T> extends k0<T, T> {

    public static final class a<T> extends AtomicInteger implements rh3<T>, bc8 {
        public final wb8<? super T> b;
        public bc8 c;
        public volatile boolean d;
        public Throwable e;
        public volatile boolean f;
        public final AtomicLong g = new AtomicLong();
        public final AtomicReference<T> h = new AtomicReference<>();

        public a(wb8<? super T> wb8Var) {
            this.b = wb8Var;
        }

        @Override // defpackage.wb8
        public final void a(bc8 bc8Var) {
            if (hc8.f(this.c, bc8Var)) {
                this.c = bc8Var;
                this.b.a(this);
                bc8Var.request(Long.MAX_VALUE);
            }
        }

        public final boolean b(boolean z, boolean z2, wb8<?> wb8Var, AtomicReference<T> atomicReference) {
            if (this.f) {
                atomicReference.lazySet(null);
                return true;
            }
            if (!z) {
                return false;
            }
            Throwable th = this.e;
            if (th != null) {
                atomicReference.lazySet(null);
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
            this.c.cancel();
            if (getAndIncrement() == 0) {
                this.h.lazySet(null);
            }
        }

        public final void d() {
            if (getAndIncrement() != 0) {
                return;
            }
            wb8<? super T> wb8Var = this.b;
            AtomicLong atomicLong = this.g;
            AtomicReference<T> atomicReference = this.h;
            int iAddAndGet = 1;
            do {
                long j = 0;
                while (true) {
                    if (j == atomicLong.get()) {
                        break;
                    }
                    boolean z = this.d;
                    T andSet = atomicReference.getAndSet(null);
                    boolean z2 = andSet == null;
                    if (b(z, z2, wb8Var, atomicReference)) {
                        return;
                    }
                    if (z2) {
                        break;
                    }
                    wb8Var.onNext(andSet);
                    j++;
                }
                if (j == atomicLong.get()) {
                    if (b(this.d, atomicReference.get() == null, wb8Var, atomicReference)) {
                        return;
                    }
                }
                if (j != 0) {
                    m00.e(atomicLong, j);
                }
                iAddAndGet = addAndGet(-iAddAndGet);
            } while (iAddAndGet != 0);
        }

        @Override // defpackage.wb8
        public final void onComplete() {
            this.d = true;
            d();
        }

        @Override // defpackage.wb8
        public final void onError(Throwable th) {
            this.e = th;
            this.d = true;
            d();
        }

        @Override // defpackage.wb8
        public final void onNext(T t) {
            this.h.lazySet(t);
            d();
        }

        @Override // defpackage.bc8
        public final void request(long j) {
            if (hc8.e(j)) {
                m00.c(this.g, j);
                d();
            }
        }
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super T> wb8Var) {
        this.c.f(new a(wb8Var));
    }
}
