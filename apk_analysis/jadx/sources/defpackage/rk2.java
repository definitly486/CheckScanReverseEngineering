package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public class rk2<T> extends ye0<T> {
    public final wb8<? super T> b;
    public T c;

    public rk2(wb8<? super T> wb8Var) {
        this.b = wb8Var;
    }

    public final void b(T t) {
        int i = get();
        do {
            wb8<? super T> wb8Var = this.b;
            if (i == 8) {
                this.c = t;
                lazySet(16);
                wb8Var.onNext(t);
                if (get() != 4) {
                    wb8Var.onComplete();
                    return;
                }
                return;
            }
            if ((i & (-3)) != 0) {
                return;
            }
            if (i == 2) {
                lazySet(3);
                wb8Var.onNext(t);
                if (get() != 4) {
                    wb8Var.onComplete();
                    return;
                }
                return;
            }
            this.c = t;
            if (compareAndSet(0, 1)) {
                return;
            } else {
                i = get();
            }
        } while (i != 4);
        this.c = null;
    }

    public void cancel() {
        set(4);
        this.c = null;
    }

    @Override // defpackage.iz7
    public final void clear() {
        lazySet(32);
        this.c = null;
    }

    @Override // defpackage.dw6
    public final int d(int i) {
        lazySet(8);
        return 2;
    }

    @Override // defpackage.iz7
    public final boolean isEmpty() {
        return get() != 16;
    }

    public void onSuccess(T t) {
        b(t);
    }

    @Override // defpackage.iz7
    public final T poll() {
        if (get() != 16) {
            return null;
        }
        lazySet(32);
        T t = this.c;
        this.c = null;
        return t;
    }

    @Override // defpackage.bc8
    public final void request(long j) {
        T t;
        if (hc8.e(j)) {
            do {
                int i = get();
                if ((i & (-2)) != 0) {
                    return;
                }
                if (i == 1) {
                    if (!compareAndSet(1, 3) || (t = this.c) == null) {
                        return;
                    }
                    this.c = null;
                    wb8<? super T> wb8Var = this.b;
                    wb8Var.onNext(t);
                    if (get() != 4) {
                        wb8Var.onComplete();
                        return;
                    }
                    return;
                }
            } while (!compareAndSet(0, 2));
        }
    }
}
