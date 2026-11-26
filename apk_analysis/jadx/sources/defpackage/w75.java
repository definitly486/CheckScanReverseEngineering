package defpackage;

import io.reactivex.exceptions.CompositeException;

/* JADX INFO: loaded from: classes5.dex */
public final class w75<T> extends b1<T, T> {
    public final rm3.e c;
    public final qx1<? super T> d;
    public final qx1<? super Throwable> e;
    public final rm3.d f;
    public final rm3.d g;
    public final rm3.d h;

    public static final class a<T> implements t75<T>, cp2 {
        public final t75<? super T> b;
        public final w75<T> c;
        public cp2 d;

        public a(t75<? super T> t75Var, w75<T> w75Var) {
            this.b = t75Var;
            this.c = w75Var;
        }

        public final void a() {
            try {
                this.c.g.getClass();
            } catch (Throwable th) {
                m13.d(th);
                d97.b(th);
            }
        }

        public final void b(Throwable th) {
            try {
                this.c.e.accept(th);
            } catch (Throwable th2) {
                m13.d(th2);
                th = new CompositeException(th, th2);
            }
            this.d = ip2.DISPOSED;
            this.b.onError(th);
            a();
        }

        @Override // defpackage.cp2
        public final void dispose() {
            try {
                this.c.h.getClass();
            } catch (Throwable th) {
                m13.d(th);
                d97.b(th);
            }
            this.d.dispose();
            this.d = ip2.DISPOSED;
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.d.isDisposed();
        }

        @Override // defpackage.t75
        public final void onComplete() {
            cp2 cp2Var = this.d;
            ip2 ip2Var = ip2.DISPOSED;
            if (cp2Var == ip2Var) {
                return;
            }
            try {
                this.c.f.getClass();
                this.d = ip2Var;
                this.b.onComplete();
                a();
            } catch (Throwable th) {
                m13.d(th);
                b(th);
            }
        }

        @Override // defpackage.t75
        public final void onError(Throwable th) {
            if (this.d == ip2.DISPOSED) {
                d97.b(th);
            } else {
                b(th);
            }
        }

        @Override // defpackage.t75
        public final void onSubscribe(cp2 cp2Var) {
            t75<? super T> t75Var = this.b;
            if (ip2.i(this.d, cp2Var)) {
                try {
                    this.c.c.getClass();
                    this.d = cp2Var;
                    t75Var.onSubscribe(this);
                } catch (Throwable th) {
                    m13.d(th);
                    cp2Var.dispose();
                    this.d = ip2.DISPOSED;
                    t75Var.onSubscribe(hx2.INSTANCE);
                    t75Var.onError(th);
                }
            }
        }

        @Override // defpackage.t75
        public final void onSuccess(T t) {
            cp2 cp2Var = this.d;
            ip2 ip2Var = ip2.DISPOSED;
            if (cp2Var == ip2Var) {
                return;
            }
            try {
                this.c.d.accept(t);
                this.d = ip2Var;
                this.b.onSuccess(t);
                a();
            } catch (Throwable th) {
                m13.d(th);
                b(th);
            }
        }
    }

    public w75(a75 a75Var, qx1 qx1Var, qx1 qx1Var2) {
        super(a75Var);
        this.c = rm3.d;
        this.d = qx1Var;
        this.e = qx1Var2;
        rm3.d dVar = rm3.c;
        this.f = dVar;
        this.g = dVar;
        this.h = dVar;
    }

    @Override // defpackage.a75
    public final void d(t75<? super T> t75Var) {
        this.b.a(new a(t75Var, this));
    }
}
