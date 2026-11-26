package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class g08<T, R> extends lz7<R> {
    public final k08 a;
    public final nl3<T, lz7<R>> b;

    public static final class a implements s08<T>, dp2 {
        public final AtomicBoolean a = new AtomicBoolean();
        public final AtomicReference<dp2> b = new AtomicReference<>(null);
        public final AtomicReference<dp2> c = new AtomicReference<>(null);
        public final /* synthetic */ s08<R> d;
        public final /* synthetic */ g08<T, R> e;

        public a(s08<R> s08Var, g08<T, R> g08Var) {
            this.d = s08Var;
            this.e = g08Var;
        }

        @Override // defpackage.s08
        public final void a(dp2 dp2Var) {
            AtomicReference<dp2> atomicReference;
            do {
                atomicReference = this.b;
                if (atomicReference.compareAndSet(null, dp2Var)) {
                    break;
                }
            } while (atomicReference.get() == null);
            if (this.a.get()) {
                dp2 andSet = atomicReference.getAndSet(null);
                if (andSet != null) {
                    andSet.dispose();
                }
                dp2 andSet2 = this.c.getAndSet(null);
                if (andSet2 != null) {
                    andSet2.dispose();
                }
            }
            this.d.a(this);
        }

        @Override // defpackage.dp2
        public final void dispose() {
            if (this.a.compareAndSet(false, true)) {
                dp2 andSet = this.b.getAndSet(null);
                if (andSet != null) {
                    andSet.dispose();
                }
                dp2 andSet2 = this.c.getAndSet(null);
                if (andSet2 != null) {
                    andSet2.dispose();
                }
            }
        }

        @Override // defpackage.s08
        public final void onError(Throwable th) {
            if (this.a.compareAndSet(false, true)) {
                this.d.onError(th);
            }
        }

        @Override // defpackage.s08
        public final void onSuccess(T t) {
            Object aVar;
            if (this.a.compareAndSet(false, true)) {
                g08<T, R> g08Var = this.e;
                b bVar = new b(g08Var);
                this.c.set(bVar);
                f08 f08Var = new f08(bVar, this.d);
                AtomicBoolean atomicBoolean = bVar.a;
                if (atomicBoolean.get()) {
                    return;
                }
                try {
                    aVar = (lz7) g08Var.b.invoke(t);
                } catch (Throwable th) {
                    aVar = new k57.a(th);
                }
                if (!(aVar instanceof k57.a)) {
                    lz7 lz7Var = (lz7) aVar;
                    if (!atomicBoolean.get()) {
                        lz7Var.a(f08Var);
                    }
                }
                Throwable thA = k57.a(aVar);
                if (thA == null || atomicBoolean.get()) {
                    return;
                }
                f08Var.onError(thA);
            }
        }
    }

    public final class b implements dp2 {
        public final AtomicBoolean a = new AtomicBoolean();
        public final AtomicReference<dp2> b = new AtomicReference<>(null);

        public b(g08 g08Var) {
        }

        @Override // defpackage.dp2
        public final void dispose() {
            dp2 andSet;
            if (!this.a.compareAndSet(false, true) || (andSet = this.b.getAndSet(null)) == null) {
                return;
            }
            andSet.dispose();
        }
    }

    public g08(k08 k08Var, nl3 nl3Var) {
        this.a = k08Var;
        this.b = nl3Var;
    }

    @Override // defpackage.lz7
    public final void a(s08<R> s08Var) {
        this.a.a(new a(s08Var, this));
    }
}
