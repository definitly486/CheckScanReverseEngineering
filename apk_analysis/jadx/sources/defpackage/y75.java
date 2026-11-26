package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class y75<T> extends b1<T, T> {
    public final he7 c;

    public static final class a<T> extends AtomicReference<cp2> implements t75<T>, cp2 {
        public final kp7 b = new kp7();
        public final t75<? super T> c;

        public a(t75<? super T> t75Var) {
            this.c = t75Var;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            ip2.a(this);
            ip2.a(this.b);
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return ip2.d(get());
        }

        @Override // defpackage.t75
        public final void onComplete() {
            this.c.onComplete();
        }

        @Override // defpackage.t75
        public final void onError(Throwable th) {
            this.c.onError(th);
        }

        @Override // defpackage.t75
        public final void onSubscribe(cp2 cp2Var) {
            ip2.g(this, cp2Var);
        }

        @Override // defpackage.t75
        public final void onSuccess(T t) {
            this.c.onSuccess(t);
        }
    }

    public static final class b<T> implements Runnable {
        public final a b;
        public final x75<T> c;

        public b(a aVar, x75 x75Var) {
            this.b = aVar;
            this.c = x75Var;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.c.a(this.b);
        }
    }

    public y75(a75 a75Var, he7 he7Var) {
        super(a75Var);
        this.c = he7Var;
    }

    @Override // defpackage.a75
    public final void d(t75<? super T> t75Var) {
        a aVar = new a(t75Var);
        t75Var.onSubscribe(aVar);
        ip2.e(aVar.b, this.c.c(new b(aVar, this.b)));
    }
}
