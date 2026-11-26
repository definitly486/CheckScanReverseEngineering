package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class f08 implements s08<Object> {
    public final /* synthetic */ g08<Object, Object>.b a;
    public final /* synthetic */ s08<Object> b;

    public f08(g08<Object, Object>.b bVar, s08<Object> s08Var) {
        this.a = bVar;
        this.b = s08Var;
    }

    @Override // defpackage.s08
    public final void a(dp2 dp2Var) {
        dp2 andSet;
        g08<Object, Object>.b bVar = this.a;
        AtomicReference<dp2> atomicReference = bVar.b;
        while (!atomicReference.compareAndSet(null, dp2Var) && atomicReference.get() == null) {
        }
        if (!bVar.a.get() || (andSet = atomicReference.getAndSet(null)) == null) {
            return;
        }
        andSet.dispose();
    }

    @Override // defpackage.s08
    public final void onError(Throwable th) {
        if (this.a.a.compareAndSet(false, true)) {
            this.b.onError(th);
        }
    }

    @Override // defpackage.s08
    public final void onSuccess(Object obj) {
        if (this.a.a.compareAndSet(false, true)) {
            this.b.onSuccess(obj);
        }
    }
}
