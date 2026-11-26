package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class i08<T, R> extends a75<R> {
    public final mz7 b;
    public final gf1 c;

    public static final class a<R> implements t75<R> {
        public final b b;
        public final t75<? super R> c;

        public a(b bVar, t75 t75Var) {
            this.b = bVar;
            this.c = t75Var;
        }

        @Override // defpackage.t75
        public final void onComplete() {
            this.c.onComplete();
        }

        @Override // defpackage.t75
        public final void onError(Throwable th) {
            this.c.onError(th);
        }

        @Override // defpackage.t75
        public final void onSubscribe(cp2 cp2Var) {
            ip2.e(this.b, cp2Var);
        }

        @Override // defpackage.t75
        public final void onSuccess(R r) {
            this.c.onSuccess(r);
        }
    }

    public static final class b<T, R> extends AtomicReference<cp2> implements t08<T>, cp2 {
        public final t75<? super R> b;
        public final xl3<? super T, ? extends x75<? extends R>> c;

        public b(t75 t75Var, gf1 gf1Var) {
            this.b = t75Var;
            this.c = gf1Var;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            ip2.a(this);
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return ip2.d(get());
        }

        @Override // defpackage.t08
        public final void onError(Throwable th) {
            this.b.onError(th);
        }

        @Override // defpackage.t08
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.g(this, cp2Var)) {
                this.b.onSubscribe(this);
            }
        }

        @Override // defpackage.t08
        public final void onSuccess(T t) {
            try {
                x75<? extends R> x75VarApply = this.c.apply(t);
                nq5.a(x75VarApply, "The mapper returned a null MaybeSource");
                x75<? extends R> x75Var = x75VarApply;
                if (isDisposed()) {
                    return;
                }
                x75Var.a(new a(this, this.b));
            } catch (Throwable th) {
                m13.d(th);
                onError(th);
            }
        }
    }

    public i08(mz7 mz7Var, gf1 gf1Var) {
        this.c = gf1Var;
        this.b = mz7Var;
    }

    @Override // defpackage.a75
    public final void d(t75<? super R> t75Var) {
        this.b.d(new b(t75Var, this.c));
    }
}
