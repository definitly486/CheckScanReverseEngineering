package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class l75<T, R> extends b1<T, R> {
    public final xl3<? super T, ? extends x75<? extends R>> c;

    public static final class a<T, R> extends AtomicReference<cp2> implements t75<T>, cp2 {
        public final t75<? super R> b;
        public final xl3<? super T, ? extends x75<? extends R>> c;
        public cp2 d;

        /* JADX INFO: renamed from: l75$a$a, reason: collision with other inner class name */
        public final class C0298a implements t75<R> {
            public C0298a() {
            }

            @Override // defpackage.t75
            public final void onComplete() {
                a.this.b.onComplete();
            }

            @Override // defpackage.t75
            public final void onError(Throwable th) {
                a.this.b.onError(th);
            }

            @Override // defpackage.t75
            public final void onSubscribe(cp2 cp2Var) {
                ip2.g(a.this, cp2Var);
            }

            @Override // defpackage.t75
            public final void onSuccess(R r) {
                a.this.b.onSuccess(r);
            }
        }

        public a(t75<? super R> t75Var, xl3<? super T, ? extends x75<? extends R>> xl3Var) {
            this.b = t75Var;
            this.c = xl3Var;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            ip2.a(this);
            this.d.dispose();
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return ip2.d(get());
        }

        @Override // defpackage.t75
        public final void onComplete() {
            this.b.onComplete();
        }

        @Override // defpackage.t75
        public final void onError(Throwable th) {
            this.b.onError(th);
        }

        @Override // defpackage.t75
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.i(this.d, cp2Var)) {
                this.d = cp2Var;
                this.b.onSubscribe(this);
            }
        }

        @Override // defpackage.t75
        public final void onSuccess(T t) {
            try {
                x75<? extends R> x75VarApply = this.c.apply(t);
                nq5.a(x75VarApply, "The mapper returned a null MaybeSource");
                x75<? extends R> x75Var = x75VarApply;
                if (isDisposed()) {
                    return;
                }
                x75Var.a(new C0298a());
            } catch (Exception e) {
                m13.d(e);
                this.b.onError(e);
            }
        }
    }

    public l75(a75 a75Var, xl3 xl3Var) {
        super(a75Var);
        this.c = xl3Var;
    }

    @Override // defpackage.a75
    public final void d(t75<? super R> t75Var) {
        this.b.a(new a(t75Var, this.c));
    }
}
