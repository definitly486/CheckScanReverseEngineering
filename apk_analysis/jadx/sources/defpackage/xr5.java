package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class xr5<T> extends g1<T, T> {
    public final he7 c;

    public static final class a<T> extends AtomicReference<cp2> implements ls5<T>, cp2 {
        public final ls5<? super T> b;
        public final AtomicReference<cp2> c = new AtomicReference<>();

        public a(ls5<? super T> ls5Var) {
            this.b = ls5Var;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            ip2.a(this.c);
            ip2.a(this);
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return ip2.d(get());
        }

        @Override // defpackage.ls5
        public final void onComplete() {
            this.b.onComplete();
        }

        @Override // defpackage.ls5
        public final void onError(Throwable th) {
            this.b.onError(th);
        }

        @Override // defpackage.ls5
        public final void onNext(T t) {
            this.b.onNext(t);
        }

        @Override // defpackage.ls5
        public final void onSubscribe(cp2 cp2Var) {
            ip2.g(this.c, cp2Var);
        }
    }

    public final class b implements Runnable {
        public final a<T> b;

        public b(a<T> aVar) {
            this.b = aVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            xr5.this.b.a(this.b);
        }
    }

    public xr5(tq5 tq5Var, he7 he7Var) {
        super(tq5Var);
        this.c = he7Var;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super T> ls5Var) {
        a aVar = new a(ls5Var);
        ls5Var.onSubscribe(aVar);
        ip2.g(aVar, this.c.c(new b(aVar)));
    }
}
