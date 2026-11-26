package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class gr5<T> extends g1<T, T> {
    public final xl3<? super T, ? extends qq1> c;

    public static final class a<T> extends xe0<T> implements ls5<T> {
        public final ls5<? super T> b;
        public final xl3<? super T, ? extends qq1> d;
        public cp2 f;
        public volatile boolean g;
        public final pt c = new pt();
        public final fu1 e = new fu1();

        /* JADX INFO: renamed from: gr5$a$a, reason: collision with other inner class name */
        public final class C0193a extends AtomicReference<cp2> implements mq1, cp2 {
            public C0193a() {
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
                a aVar = a.this;
                aVar.e.a(this);
                aVar.onComplete();
            }

            @Override // defpackage.mq1
            public final void onError(Throwable th) {
                a aVar = a.this;
                aVar.e.a(this);
                aVar.onError(th);
            }

            @Override // defpackage.mq1
            public final void onSubscribe(cp2 cp2Var) {
                ip2.g(this, cp2Var);
            }
        }

        public a(ls5 ls5Var, xl3 xl3Var) {
            this.b = ls5Var;
            this.d = xl3Var;
            lazySet(1);
        }

        @Override // defpackage.iz7
        public final void clear() {
        }

        @Override // defpackage.dw6
        public final int d(int i) {
            return 2;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            this.g = true;
            this.f.dispose();
            this.e.dispose();
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.f.isDisposed();
        }

        @Override // defpackage.iz7
        public final boolean isEmpty() {
            return true;
        }

        @Override // defpackage.ls5
        public final void onComplete() {
            if (decrementAndGet() == 0) {
                pt ptVar = this.c;
                ptVar.getClass();
                Throwable thB = k13.b(ptVar);
                ls5<? super T> ls5Var = this.b;
                if (thB != null) {
                    ls5Var.onError(thB);
                } else {
                    ls5Var.onComplete();
                }
            }
        }

        @Override // defpackage.ls5
        public final void onError(Throwable th) {
            pt ptVar = this.c;
            ptVar.getClass();
            if (!k13.a(ptVar, th)) {
                d97.b(th);
                return;
            }
            dispose();
            if (getAndSet(0) > 0) {
                this.b.onError(k13.b(ptVar));
            }
        }

        @Override // defpackage.ls5
        public final void onNext(T t) {
            try {
                qq1 qq1VarApply = this.d.apply(t);
                nq5.a(qq1VarApply, "The mapper returned a null CompletableSource");
                qq1 qq1Var = qq1VarApply;
                getAndIncrement();
                C0193a c0193a = new C0193a();
                if (this.g || !this.e.b(c0193a)) {
                    return;
                }
                qq1Var.b(c0193a);
            } catch (Throwable th) {
                m13.d(th);
                this.f.dispose();
                onError(th);
            }
        }

        @Override // defpackage.ls5
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.i(this.f, cp2Var)) {
                this.f = cp2Var;
                this.b.onSubscribe(this);
            }
        }

        @Override // defpackage.iz7
        public final T poll() {
            return null;
        }
    }

    public gr5(pr5 pr5Var, vq vqVar) {
        super(pr5Var);
        this.c = vqVar;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super T> ls5Var) {
        this.b.a(new a(ls5Var, this.c));
    }
}
