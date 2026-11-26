package defpackage;

import io.reactivex.exceptions.CompositeException;

/* JADX INFO: loaded from: classes5.dex */
public final class oq1 extends qp1 {
    public final qp1 b;
    public final qx1<? super cp2> c;
    public final qx1<? super Throwable> d;
    public final h6 e;
    public final h6 f;
    public final rm3.d g;
    public final rm3.d h;

    public final class a implements mq1, cp2 {
        public final mq1 b;
        public cp2 c;

        public a(mq1 mq1Var) {
            this.b = mq1Var;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            try {
                oq1.this.h.getClass();
            } catch (Throwable th) {
                m13.d(th);
                d97.b(th);
            }
            this.c.dispose();
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.c.isDisposed();
        }

        @Override // defpackage.mq1
        public final void onComplete() {
            mq1 mq1Var = this.b;
            oq1 oq1Var = oq1.this;
            if (this.c == ip2.DISPOSED) {
                return;
            }
            try {
                oq1Var.e.run();
                oq1Var.f.run();
                mq1Var.onComplete();
                try {
                    oq1Var.g.getClass();
                } catch (Throwable th) {
                    m13.d(th);
                    d97.b(th);
                }
            } catch (Throwable th2) {
                m13.d(th2);
                mq1Var.onError(th2);
            }
        }

        @Override // defpackage.mq1
        public final void onError(Throwable th) {
            oq1 oq1Var = oq1.this;
            if (this.c == ip2.DISPOSED) {
                d97.b(th);
                return;
            }
            try {
                oq1Var.d.accept(th);
                oq1Var.f.run();
            } catch (Throwable th2) {
                m13.d(th2);
                th = new CompositeException(th, th2);
            }
            this.b.onError(th);
            try {
                oq1Var.g.getClass();
            } catch (Throwable th3) {
                m13.d(th3);
                d97.b(th3);
            }
        }

        @Override // defpackage.mq1
        public final void onSubscribe(cp2 cp2Var) {
            mq1 mq1Var = this.b;
            try {
                oq1.this.c.accept(cp2Var);
                if (ip2.i(this.c, cp2Var)) {
                    this.c = cp2Var;
                    mq1Var.onSubscribe(this);
                }
            } catch (Throwable th) {
                m13.d(th);
                cp2Var.dispose();
                this.c = ip2.DISPOSED;
                mq1Var.onSubscribe(hx2.INSTANCE);
                mq1Var.onError(th);
            }
        }
    }

    public oq1(qp1 qp1Var, qx1 qx1Var, qx1 qx1Var2, h6 h6Var, h6 h6Var2) {
        this.b = qp1Var;
        this.c = qx1Var;
        this.d = qx1Var2;
        this.e = h6Var;
        this.f = h6Var2;
        rm3.d dVar = rm3.c;
        this.g = dVar;
        this.h = dVar;
    }

    @Override // defpackage.qp1
    public final void h(mq1 mq1Var) {
        this.b.b(new a(mq1Var));
    }
}
