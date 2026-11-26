package defpackage;

import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: loaded from: classes5.dex */
public final class vh3<T, U extends Collection<? super T>> extends mz7<U> implements tm3<U> {
    public final ug3 b;
    public final nr c;

    public static final class a<T, U extends Collection<? super T>> implements rh3<T>, cp2 {
        public final t08<? super U> b;
        public bc8 c;
        public U d;

        public a(t08<? super U> t08Var, U u) {
            this.b = t08Var;
            this.d = u;
        }

        @Override // defpackage.wb8
        public final void a(bc8 bc8Var) {
            if (hc8.f(this.c, bc8Var)) {
                this.c = bc8Var;
                this.b.onSubscribe(this);
                bc8Var.request(Long.MAX_VALUE);
            }
        }

        @Override // defpackage.cp2
        public final void dispose() {
            this.c.cancel();
            this.c = hc8.CANCELLED;
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.c == hc8.CANCELLED;
        }

        @Override // defpackage.wb8
        public final void onComplete() {
            this.c = hc8.CANCELLED;
            this.b.onSuccess(this.d);
        }

        @Override // defpackage.wb8
        public final void onError(Throwable th) {
            this.d = null;
            this.c = hc8.CANCELLED;
            this.b.onError(th);
        }

        @Override // defpackage.wb8
        public final void onNext(T t) {
            this.d.add(t);
        }
    }

    public vh3(ug3 ug3Var) {
        nr nrVar = nr.INSTANCE;
        this.b = ug3Var;
        this.c = nrVar;
    }

    @Override // defpackage.tm3
    public final gg3<U> c() {
        return new uh3(this.b, this.c);
    }

    @Override // defpackage.mz7
    public final void h(t08<? super U> t08Var) {
        try {
            this.c.getClass();
            this.b.f(new a(t08Var, new ArrayList()));
        } catch (Throwable th) {
            m13.d(th);
            t08Var.onSubscribe(hx2.INSTANCE);
            t08Var.onError(th);
        }
    }
}
