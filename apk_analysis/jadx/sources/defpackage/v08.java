package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class v08<T> extends lz7<T> {
    public final f18 a;
    public final nl3<Throwable, T> b;

    public static final class a implements s08<T>, dp2 {
        public final AtomicBoolean a = new AtomicBoolean();
        public final AtomicReference<dp2> b = new AtomicReference<>(null);
        public final /* synthetic */ s08<T> c;
        public final /* synthetic */ v08<T> d;

        public a(s08<T> s08Var, v08<T> v08Var) {
            this.c = s08Var;
            this.d = v08Var;
        }

        @Override // defpackage.s08
        public final void a(dp2 dp2Var) {
            this.c.a(dp2Var);
        }

        @Override // defpackage.dp2
        public final void dispose() {
            dp2 andSet;
            if (!this.a.compareAndSet(false, true) || (andSet = this.b.getAndSet(null)) == null) {
                return;
            }
            andSet.dispose();
        }

        @Override // defpackage.s08
        public final void onError(Throwable th) {
            Object aVar;
            if (this.a.compareAndSet(false, true)) {
                try {
                    aVar = this.d.b.invoke(th);
                } catch (Throwable th2) {
                    aVar = new k57.a(th2);
                }
                boolean z = aVar instanceof k57.a;
                s08<T> s08Var = this.c;
                if (!z) {
                    s08Var.onSuccess((T) aVar);
                }
                Throwable thA = k57.a(aVar);
                if (thA != null) {
                    s08Var.onError(thA);
                }
            }
        }

        @Override // defpackage.s08
        public final void onSuccess(T t) {
            if (this.a.compareAndSet(false, true)) {
                this.c.onSuccess(t);
            }
        }
    }

    public v08(f18 f18Var, nl3 nl3Var) {
        this.a = f18Var;
        this.b = nl3Var;
    }

    @Override // defpackage.lz7
    public final void a(s08<T> s08Var) {
        this.a.a(new a(s08Var, this));
    }
}
