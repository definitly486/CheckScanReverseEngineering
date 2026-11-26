package defpackage;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class hr5<T> extends qp1 implements vm3<T> {
    public final pr5 b;
    public final vq c;

    public static final class a<T> extends AtomicInteger implements cp2, ls5<T> {
        public final mq1 b;
        public final xl3<? super T, ? extends qq1> d;
        public cp2 f;
        public volatile boolean g;
        public final pt c = new pt();
        public final fu1 e = new fu1();

        /* JADX INFO: renamed from: hr5$a$a, reason: collision with other inner class name */
        public final class C0196a extends AtomicReference<cp2> implements mq1, cp2 {
            public C0196a() {
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

        public a(mq1 mq1Var, vq vqVar) {
            this.b = mq1Var;
            this.d = vqVar;
            lazySet(1);
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

        @Override // defpackage.ls5
        public final void onComplete() {
            if (decrementAndGet() == 0) {
                pt ptVar = this.c;
                ptVar.getClass();
                Throwable thB = k13.b(ptVar);
                mq1 mq1Var = this.b;
                if (thB != null) {
                    mq1Var.onError(thB);
                } else {
                    mq1Var.onComplete();
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
                C0196a c0196a = new C0196a();
                if (this.g || !this.e.b(c0196a)) {
                    return;
                }
                qq1Var.b(c0196a);
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
    }

    public hr5(pr5 pr5Var, vq vqVar) {
        this.b = pr5Var;
        this.c = vqVar;
    }

    @Override // defpackage.vm3
    public final tq5<T> a() {
        return new gr5(this.b, this.c);
    }

    @Override // defpackage.qp1
    public final void h(mq1 mq1Var) {
        this.b.a(new a(mq1Var, this.c));
    }
}
