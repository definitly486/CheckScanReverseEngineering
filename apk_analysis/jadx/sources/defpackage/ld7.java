package defpackage;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public final class ld7<T> extends AtomicInteger implements mw6<T> {
    public final T b;
    public final wb8<? super T> c;

    public ld7(wb8<? super T> wb8Var, T t) {
        this.c = wb8Var;
        this.b = t;
    }

    @Override // defpackage.bc8
    public final void cancel() {
        lazySet(2);
    }

    @Override // defpackage.iz7
    public final void clear() {
        lazySet(1);
    }

    @Override // defpackage.dw6
    public final int d(int i) {
        return 1;
    }

    @Override // defpackage.iz7
    public final boolean isEmpty() {
        return get() != 0;
    }

    @Override // defpackage.iz7
    public final boolean offer(T t) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // defpackage.iz7
    public final T poll() {
        if (get() != 0) {
            return null;
        }
        lazySet(1);
        return this.b;
    }

    @Override // defpackage.bc8
    public final void request(long j) {
        if (hc8.e(j) && compareAndSet(0, 1)) {
            T t = this.b;
            wb8<? super T> wb8Var = this.c;
            wb8Var.onNext(t);
            if (get() != 2) {
                wb8Var.onComplete();
            }
        }
    }
}
