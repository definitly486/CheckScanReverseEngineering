package defpackage;

import java.util.Collection;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
public final class uh3<T, U extends Collection<? super T>> extends k0<T, U> {
    public final Callable<U> d;

    public static final class a<T, U extends Collection<? super T>> extends rk2<U> implements rh3<T>, bc8 {
        public bc8 d;

        @Override // defpackage.wb8
        public final void a(bc8 bc8Var) {
            if (hc8.f(this.d, bc8Var)) {
                this.d = bc8Var;
                this.b.a(this);
                bc8Var.request(Long.MAX_VALUE);
            }
        }

        @Override // defpackage.rk2, defpackage.bc8
        public final void cancel() {
            super.cancel();
            this.d.cancel();
        }

        @Override // defpackage.wb8
        public final void onComplete() {
            b(this.c);
        }

        @Override // defpackage.wb8
        public final void onError(Throwable th) {
            this.c = null;
            this.b.onError(th);
        }

        @Override // defpackage.wb8
        public final void onNext(T t) {
            Collection collection = (Collection) this.c;
            if (collection != null) {
                collection.add(t);
            }
        }
    }

    public uh3(ug3 ug3Var, nr nrVar) {
        super(ug3Var);
        this.d = nrVar;
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super U> wb8Var) {
        try {
            U uCall = this.d.call();
            nq5.a(uCall, "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.");
            U u = uCall;
            a aVar = new a(wb8Var);
            aVar.c = u;
            this.c.f(aVar);
        } catch (Throwable th) {
            m13.d(th);
            wb8Var.a(qx2.INSTANCE);
            wb8Var.onError(th);
        }
    }
}
