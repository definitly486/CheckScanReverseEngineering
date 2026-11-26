package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class ct6<T> extends sb8<T> {
    public static final a[] d = new a[0];
    public static final a[] e = new a[0];
    public final AtomicReference<a<T>[]> b = new AtomicReference<>(e);
    public Throwable c;

    public static final class a<T> extends AtomicBoolean implements cp2 {
        public final ls5<? super T> b;
        public final ct6<T> c;

        public a(ls5<? super T> ls5Var, ct6<T> ct6Var) {
            this.b = ls5Var;
            this.c = ct6Var;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            if (compareAndSet(false, true)) {
                this.c.i(this);
            }
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return get();
        }
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super T> ls5Var) {
        a<T> aVar = new a<>(ls5Var, this);
        ls5Var.onSubscribe(aVar);
        while (true) {
            AtomicReference<a<T>[]> atomicReference = this.b;
            a<T>[] aVarArr = atomicReference.get();
            if (aVarArr == d) {
                Throwable th = this.c;
                if (th != null) {
                    ls5Var.onError(th);
                    return;
                } else {
                    ls5Var.onComplete();
                    return;
                }
            }
            int length = aVarArr.length;
            a<T>[] aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
            do {
                if (atomicReference.compareAndSet(aVarArr, aVarArr2)) {
                    if (aVar.get()) {
                        i(aVar);
                        return;
                    }
                    return;
                }
            } while (atomicReference.get() == aVarArr);
        }
    }

    public final void i(a<T> aVar) {
        a<T>[] aVarArr;
        while (true) {
            AtomicReference<a<T>[]> atomicReference = this.b;
            a<T>[] aVarArr2 = atomicReference.get();
            if (aVarArr2 == d || aVarArr2 == (aVarArr = e)) {
                return;
            }
            int length = aVarArr2.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    i = -1;
                    break;
                } else if (aVarArr2[i] == aVar) {
                    break;
                } else {
                    i++;
                }
            }
            if (i < 0) {
                return;
            }
            if (length != 1) {
                aVarArr = new a[length - 1];
                System.arraycopy(aVarArr2, 0, aVarArr, 0, i);
                System.arraycopy(aVarArr2, i + 1, aVarArr, i, (length - i) - 1);
            }
            while (!atomicReference.compareAndSet(aVarArr2, aVarArr)) {
                if (atomicReference.get() != aVarArr2) {
                }
            }
            return;
        }
    }

    @Override // defpackage.ls5
    public final void onComplete() {
        AtomicReference<a<T>[]> atomicReference = this.b;
        a<T>[] aVarArr = atomicReference.get();
        a<T>[] aVarArr2 = d;
        if (aVarArr == aVarArr2) {
            return;
        }
        a<T>[] andSet = atomicReference.getAndSet(aVarArr2);
        for (a<T> aVar : andSet) {
            if (!aVar.get()) {
                aVar.b.onComplete();
            }
        }
    }

    @Override // defpackage.ls5
    public final void onError(Throwable th) {
        nq5.a(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        AtomicReference<a<T>[]> atomicReference = this.b;
        a<T>[] aVarArr = atomicReference.get();
        a<T>[] aVarArr2 = d;
        if (aVarArr == aVarArr2) {
            d97.b(th);
            return;
        }
        this.c = th;
        for (a<T> aVar : atomicReference.getAndSet(aVarArr2)) {
            if (aVar.get()) {
                d97.b(th);
            } else {
                aVar.b.onError(th);
            }
        }
    }

    @Override // defpackage.ls5
    public final void onNext(T t) {
        nq5.a(t, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        for (a<T> aVar : this.b.get()) {
            if (!aVar.get()) {
                aVar.b.onNext(t);
            }
        }
    }

    @Override // defpackage.ls5
    public final void onSubscribe(cp2 cp2Var) {
        if (this.b.get() == d) {
            cp2Var.dispose();
        }
    }
}
