package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class e75<T> extends a75<T> {
    public final a75 b;
    public final qp1 c;

    public static final class a<T> implements t75<T> {
        public final b b;
        public final t75<? super T> c;

        public a(b bVar, t75 t75Var) {
            this.b = bVar;
            this.c = t75Var;
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
            ip2.e(this.b, cp2Var);
        }

        @Override // defpackage.t75
        public final void onSuccess(T t) {
            this.c.onSuccess(t);
        }
    }

    public static final class b<T> extends AtomicReference<cp2> implements mq1, cp2 {
        public final t75<? super T> b;
        public final x75<T> c;

        public b(t75 t75Var, a75 a75Var) {
            this.b = t75Var;
            this.c = a75Var;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            ip2.a(this);
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return ip2.d(get());
        }

        @Override // defpackage.mq1
        public final void onComplete() {
            this.c.a(new a(this, this.b));
        }

        @Override // defpackage.mq1
        public final void onError(Throwable th) {
            this.b.onError(th);
        }

        @Override // defpackage.mq1
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.g(this, cp2Var)) {
                this.b.onSubscribe(this);
            }
        }
    }

    public e75(a75 a75Var, qp1 qp1Var) {
        this.b = a75Var;
        this.c = qp1Var;
    }

    @Override // defpackage.a75
    public final void d(t75<? super T> t75Var) {
        this.c.b(new b(t75Var, this.b));
    }
}
