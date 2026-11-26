package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class rz7<T> extends mz7<T> {
    public final c18<T> b;
    public final qp1 c;

    public static final class a<T> extends AtomicReference<cp2> implements mq1, cp2 {
        public final t08<? super T> b;
        public final c18<T> c;

        public a(t08<? super T> t08Var, c18<T> c18Var) {
            this.b = t08Var;
            this.c = c18Var;
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
            this.c.d(new b67(this, this.b));
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

    public rz7(c18 c18Var, qp1 qp1Var) {
        this.b = c18Var;
        this.c = qp1Var;
    }

    @Override // defpackage.mz7
    public final void h(t08<? super T> t08Var) {
        this.c.b(new a(t08Var, this.b));
    }
}
