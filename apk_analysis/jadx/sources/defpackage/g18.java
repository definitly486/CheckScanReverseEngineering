package defpackage;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class g18<T> extends mz7<T> {
    public final yz7 b;
    public final long c = 20;
    public final TimeUnit d = TimeUnit.SECONDS;
    public final he7 e;

    public static final class a<T> extends AtomicReference<cp2> implements t08<T>, Runnable, cp2 {
        public final t08<? super T> b;
        public final AtomicReference<cp2> c = new AtomicReference<>();
        public final long d;
        public final TimeUnit e;

        public a(t08 t08Var, long j, TimeUnit timeUnit) {
            this.b = t08Var;
            this.d = j;
            this.e = timeUnit;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            ip2.a(this);
            ip2.a(this.c);
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return ip2.d(get());
        }

        @Override // defpackage.t08
        public final void onError(Throwable th) {
            cp2 cp2Var = get();
            ip2 ip2Var = ip2.DISPOSED;
            if (cp2Var == ip2Var || !compareAndSet(cp2Var, ip2Var)) {
                d97.b(th);
            } else {
                ip2.a(this.c);
                this.b.onError(th);
            }
        }

        @Override // defpackage.t08
        public final void onSubscribe(cp2 cp2Var) {
            ip2.g(this, cp2Var);
        }

        @Override // defpackage.t08
        public final void onSuccess(T t) {
            cp2 cp2Var = get();
            ip2 ip2Var = ip2.DISPOSED;
            if (cp2Var == ip2Var || !compareAndSet(cp2Var, ip2Var)) {
                return;
            }
            ip2.a(this.c);
            this.b.onSuccess(t);
        }

        @Override // java.lang.Runnable
        public final void run() {
            cp2 cp2Var = get();
            ip2 ip2Var = ip2.DISPOSED;
            if (cp2Var == ip2Var || !compareAndSet(cp2Var, ip2Var)) {
                return;
            }
            if (cp2Var != null) {
                cp2Var.dispose();
            }
            this.b.onError(new TimeoutException(k13.c(this.d, this.e)));
        }
    }

    public g18(yz7 yz7Var, he7 he7Var) {
        this.b = yz7Var;
        this.e = he7Var;
    }

    @Override // defpackage.mz7
    public final void h(t08<? super T> t08Var) {
        long j = this.c;
        TimeUnit timeUnit = this.d;
        a aVar = new a(t08Var, j, timeUnit);
        t08Var.onSubscribe(aVar);
        ip2.e(aVar.c, this.e.d(aVar, j, timeUnit));
        this.b.d(aVar);
    }
}
