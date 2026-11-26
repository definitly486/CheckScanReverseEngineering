package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class c75<T> extends a75<T> {
    public final v75<T> b;

    public static final class a<T> extends AtomicReference<cp2> implements f75<T>, cp2 {
        public final t75<? super T> b;

        public a(t75<? super T> t75Var) {
            this.b = t75Var;
        }

        public final void a() {
            cp2 andSet;
            cp2 cp2Var = get();
            ip2 ip2Var = ip2.DISPOSED;
            if (cp2Var == ip2Var || (andSet = getAndSet(ip2Var)) == ip2Var) {
                return;
            }
            try {
                this.b.onComplete();
            } finally {
                if (andSet != null) {
                    andSet.dispose();
                }
            }
        }

        public final void b(T t) {
            cp2 andSet;
            cp2 cp2Var = get();
            ip2 ip2Var = ip2.DISPOSED;
            if (cp2Var == ip2Var || (andSet = getAndSet(ip2Var)) == ip2Var) {
                return;
            }
            t75<? super T> t75Var = this.b;
            try {
                if (t == null) {
                    t75Var.onError(new NullPointerException("onSuccess called with null. Null values are generally not allowed in 2.x operators and sources."));
                } else {
                    t75Var.onSuccess(t);
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

        public final boolean d(Throwable th) {
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

        @Override // java.util.concurrent.atomic.AtomicReference
        public final String toString() {
            return pg.g(a.class.getSimpleName(), "{", super.toString(), "}");
        }
    }

    public c75(v75<T> v75Var) {
        this.b = v75Var;
    }

    @Override // defpackage.a75
    public final void d(t75<? super T> t75Var) {
        a aVar = new a(t75Var);
        t75Var.onSubscribe(aVar);
        try {
            this.b.a(aVar);
        } catch (Throwable th) {
            m13.d(th);
            if (aVar.d(th)) {
                return;
            }
            d97.b(th);
        }
    }
}
