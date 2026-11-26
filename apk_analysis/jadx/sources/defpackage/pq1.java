package defpackage;

import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class pq1 extends qp1 {
    public final qp1 b;
    public final xl3<? super Throwable, ? extends qq1> c;

    public static final class a extends AtomicReference<cp2> implements mq1, cp2 {
        public final mq1 b;
        public final xl3<? super Throwable, ? extends qq1> c;
        public boolean d;

        public a(mq1 mq1Var, xl3<? super Throwable, ? extends qq1> xl3Var) {
            this.b = mq1Var;
            this.c = xl3Var;
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
            this.b.onComplete();
        }

        @Override // defpackage.mq1
        public final void onError(Throwable th) {
            boolean z = this.d;
            mq1 mq1Var = this.b;
            if (z) {
                mq1Var.onError(th);
                return;
            }
            this.d = true;
            try {
                qq1 qq1VarApply = this.c.apply(th);
                nq5.a(qq1VarApply, "The errorMapper returned a null CompletableSource");
                qq1VarApply.b(this);
            } catch (Throwable th2) {
                m13.d(th2);
                mq1Var.onError(new CompositeException(th, th2));
            }
        }

        @Override // defpackage.mq1
        public final void onSubscribe(cp2 cp2Var) {
            ip2.e(this, cp2Var);
        }
    }

    public pq1(qp1 qp1Var, xl3 xl3Var) {
        this.b = qp1Var;
        this.c = xl3Var;
    }

    @Override // defpackage.qp1
    public final void h(mq1 mq1Var) {
        a aVar = new a(mq1Var, this.c);
        mq1Var.onSubscribe(aVar);
        this.b.b(aVar);
    }
}
