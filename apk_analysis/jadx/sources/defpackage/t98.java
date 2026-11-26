package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class t98<T> extends AtomicInteger implements rh3<T>, bc8 {
    public final wb8<? super T> b;
    public final pt c = new pt();
    public final AtomicLong d = new AtomicLong();
    public final AtomicReference<bc8> e = new AtomicReference<>();
    public final AtomicBoolean f = new AtomicBoolean();
    public volatile boolean g;

    public t98(wb8<? super T> wb8Var) {
        this.b = wb8Var;
    }

    @Override // defpackage.wb8
    public final void a(bc8 bc8Var) {
        if (!this.f.compareAndSet(false, true)) {
            bc8Var.cancel();
            cancel();
            onError(new IllegalStateException("§2.12 violated: onSubscribe must be called at most once"));
            return;
        }
        this.b.a(this);
        if (hc8.d(this.e, bc8Var)) {
            long andSet = this.d.getAndSet(0L);
            if (andSet != 0) {
                bc8Var.request(andSet);
            }
        }
    }

    @Override // defpackage.bc8
    public final void cancel() {
        if (this.g) {
            return;
        }
        hc8.a(this.e);
    }

    @Override // defpackage.wb8
    public final void onComplete() {
        this.g = true;
        wb8<? super T> wb8Var = this.b;
        pt ptVar = this.c;
        if (getAndIncrement() == 0) {
            Throwable thB = k13.b(ptVar);
            if (thB != null) {
                wb8Var.onError(thB);
            } else {
                wb8Var.onComplete();
            }
        }
    }

    @Override // defpackage.wb8
    public final void onError(Throwable th) {
        this.g = true;
        wb8<? super T> wb8Var = this.b;
        pt ptVar = this.c;
        if (!k13.a(ptVar, th)) {
            d97.b(th);
        } else if (getAndIncrement() == 0) {
            wb8Var.onError(k13.b(ptVar));
        }
    }

    @Override // defpackage.wb8
    public final void onNext(T t) {
        if (get() == 0 && compareAndSet(0, 1)) {
            wb8<? super T> wb8Var = this.b;
            wb8Var.onNext(t);
            if (decrementAndGet() != 0) {
                Throwable thB = k13.b(this.c);
                if (thB != null) {
                    wb8Var.onError(thB);
                } else {
                    wb8Var.onComplete();
                }
            }
        }
    }

    @Override // defpackage.bc8
    public final void request(long j) {
        if (j <= 0) {
            cancel();
            onError(new IllegalArgumentException(r01.c(j, "§3.9 violated: positive request amount required but it was ")));
            return;
        }
        AtomicReference<bc8> atomicReference = this.e;
        bc8 bc8Var = atomicReference.get();
        if (bc8Var != null) {
            bc8Var.request(j);
            return;
        }
        if (hc8.e(j)) {
            AtomicLong atomicLong = this.d;
            m00.c(atomicLong, j);
            bc8 bc8Var2 = atomicReference.get();
            if (bc8Var2 != null) {
                long andSet = atomicLong.getAndSet(0L);
                if (andSet != 0) {
                    bc8Var2.request(andSet);
                }
            }
        }
    }
}
