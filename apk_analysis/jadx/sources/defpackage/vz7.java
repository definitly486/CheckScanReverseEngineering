package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class vz7<T> extends lz7<T> {
    public final f18 a;
    public final ll3<j59> b;

    public static final class a implements s08<T>, dp2 {
        public final AtomicBoolean a = new AtomicBoolean();
        public final AtomicReference<dp2> b = new AtomicReference<>(null);
        public final /* synthetic */ s08<T> c;
        public final /* synthetic */ vz7<T> d;

        public a(s08<T> s08Var, vz7<T> vz7Var) {
            this.c = s08Var;
            this.d = vz7Var;
        }

        @Override // defpackage.s08
        public final void a(dp2 dp2Var) {
            AtomicReference<dp2> atomicReference;
            dp2 andSet;
            do {
                atomicReference = this.b;
                if (atomicReference.compareAndSet(null, dp2Var)) {
                    break;
                }
            } while (atomicReference.get() == null);
            if (this.a.get() && (andSet = atomicReference.getAndSet(null)) != null) {
                andSet.dispose();
            }
            this.c.a(this);
        }

        @Override // defpackage.dp2
        public final void dispose() {
            Object aVar;
            if (this.a.compareAndSet(false, true)) {
                try {
                    this.d.b.invoke();
                    aVar = j59.a;
                } catch (Throwable th) {
                    aVar = new k57.a(th);
                }
                Throwable thA = k57.a(aVar);
                AtomicReference<dp2> atomicReference = this.b;
                if (thA != null) {
                    dp2 andSet = atomicReference.getAndSet(null);
                    if (andSet != null) {
                        andSet.dispose();
                    }
                    this.c.onError(thA);
                }
                if (aVar instanceof k57.a) {
                    return;
                }
                dp2 andSet2 = atomicReference.getAndSet(null);
                if (andSet2 != null) {
                    andSet2.dispose();
                }
            }
        }

        @Override // defpackage.s08
        public final void onError(Throwable th) {
            if (this.a.compareAndSet(false, true)) {
                this.c.onError(th);
            }
        }

        @Override // defpackage.s08
        public final void onSuccess(T t) {
            if (this.a.compareAndSet(false, true)) {
                this.c.onSuccess(t);
            }
        }
    }

    public vz7(f18 f18Var, ll3 ll3Var) {
        ll3Var.getClass();
        this.a = f18Var;
        this.b = ll3Var;
    }

    @Override // defpackage.lz7
    public final void a(s08<T> s08Var) {
        this.a.a(new a(s08Var, this));
    }
}
