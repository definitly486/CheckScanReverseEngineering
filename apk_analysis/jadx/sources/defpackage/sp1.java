package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class sp1<R> extends tq5<R> {
    public final sq1 b;
    public final tq5 c;

    public static final class a<R> extends AtomicReference<cp2> implements ls5<R>, mq1, cp2 {
        public final ls5<? super R> b;
        public wr5<? extends R> c;

        public a(ls5 ls5Var, tq5 tq5Var) {
            this.c = tq5Var;
            this.b = ls5Var;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            ip2.a(this);
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return ip2.d(get());
        }

        @Override // defpackage.ls5
        public final void onComplete() {
            wr5<? extends R> wr5Var = this.c;
            if (wr5Var == null) {
                this.b.onComplete();
            } else {
                this.c = null;
                wr5Var.a(this);
            }
        }

        @Override // defpackage.ls5
        public final void onError(Throwable th) {
            this.b.onError(th);
        }

        @Override // defpackage.ls5
        public final void onNext(R r) {
            this.b.onNext(r);
        }

        @Override // defpackage.ls5
        public final void onSubscribe(cp2 cp2Var) {
            ip2.e(this, cp2Var);
        }
    }

    public sp1(sq1 sq1Var, tq5 tq5Var) {
        this.b = sq1Var;
        this.c = tq5Var;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super R> ls5Var) {
        a aVar = new a(ls5Var, this.c);
        ls5Var.onSubscribe(aVar);
        this.b.b(aVar);
    }
}
