package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class xq5<T> extends tq5<T> {
    public final rr5<T> b;

    public static final class a<T> extends AtomicReference<cp2> implements cr5<T>, cp2 {
        public final ls5<? super T> b;

        public a(ls5<? super T> ls5Var) {
            this.b = ls5Var;
        }

        public final void a() {
            if (isDisposed()) {
                return;
            }
            try {
                this.b.onComplete();
            } finally {
                ip2.a(this);
            }
        }

        public final boolean b(Throwable th) {
            if (isDisposed()) {
                return false;
            }
            try {
                this.b.onError(th);
                return true;
            } finally {
                ip2.a(this);
            }
        }

        @Override // defpackage.cp2
        public final void dispose() {
            ip2.a(this);
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return ip2.d(get());
        }

        @Override // defpackage.zw2
        public final void onNext(T t) {
            if (t != null) {
                if (isDisposed()) {
                    return;
                }
                this.b.onNext(t);
            } else {
                NullPointerException nullPointerException = new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
                if (b(nullPointerException)) {
                    return;
                }
                d97.b(nullPointerException);
            }
        }

        @Override // java.util.concurrent.atomic.AtomicReference
        public final String toString() {
            return pg.g(a.class.getSimpleName(), "{", super.toString(), "}");
        }
    }

    public xq5(rr5<T> rr5Var) {
        this.b = rr5Var;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super T> ls5Var) {
        a aVar = new a(ls5Var);
        ls5Var.onSubscribe(aVar);
        try {
            this.b.a(aVar);
        } catch (Throwable th) {
            m13.d(th);
            if (aVar.b(th)) {
                return;
            }
            d97.b(th);
        }
    }
}
