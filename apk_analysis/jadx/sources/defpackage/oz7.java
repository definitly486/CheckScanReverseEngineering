package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class oz7<T> extends mz7<T> {
    public final w08<T> b;

    public static final class a<T> extends AtomicReference<cp2> implements b08<T>, cp2 {
        public final t08<? super T> b;

        public a(t08<? super T> t08Var) {
            this.b = t08Var;
        }

        @Override // defpackage.b08
        public final boolean a(Throwable th) {
            cp2 andSet;
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            cp2 cp2Var = get();
            ip2 ip2Var = ip2.DISPOSED;
            if (cp2Var == ip2Var || (andSet = getAndSet(ip2Var)) == ip2Var) {
                return false;
            }
            try {
                this.b.onError(th);
            } finally {
                if (andSet != null) {
                    andSet.dispose();
                }
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

        @Override // defpackage.b08
        public final void onError(Throwable th) {
            if (a(th)) {
                return;
            }
            d97.b(th);
        }

        @Override // defpackage.b08
        public final void onSuccess(T t) {
            cp2 andSet;
            cp2 cp2Var = get();
            ip2 ip2Var = ip2.DISPOSED;
            if (cp2Var == ip2Var || (andSet = getAndSet(ip2Var)) == ip2Var) {
                return;
            }
            t08<? super T> t08Var = this.b;
            try {
                if (t == null) {
                    t08Var.onError(new NullPointerException("onSuccess called with null. Null values are generally not allowed in 2.x operators and sources."));
                } else {
                    t08Var.onSuccess(t);
                }
                if (andSet != null) {
                    andSet.dispose();
                }
            } catch (Throwable th) {
                if (andSet != null) {
                    andSet.dispose();
                }
                throw th;
            }
        }

        @Override // java.util.concurrent.atomic.AtomicReference
        public final String toString() {
            return pg.g(a.class.getSimpleName(), "{", super.toString(), "}");
        }
    }

    public oz7(w08<T> w08Var) {
        this.b = w08Var;
    }

    @Override // defpackage.mz7
    public final void h(t08<? super T> t08Var) {
        a aVar = new a(t08Var);
        t08Var.onSubscribe(aVar);
        try {
            this.b.c(aVar);
        } catch (Throwable th) {
            m13.d(th);
            aVar.onError(th);
        }
    }
}
