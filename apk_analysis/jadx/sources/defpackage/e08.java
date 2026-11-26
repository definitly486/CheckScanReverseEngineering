package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class e08<T, R> extends mz7<R> {
    public final mz7 b;
    public final xl3<? super T, ? extends c18<? extends R>> c;

    public static final class a<T, R> extends AtomicReference<cp2> implements t08<T>, cp2 {
        public final t08<? super R> b;
        public final xl3<? super T, ? extends c18<? extends R>> c;

        /* JADX INFO: renamed from: e08$a$a, reason: collision with other inner class name */
        public static final class C0183a<R> implements t08<R> {
            public final a b;
            public final t08<? super R> c;

            public C0183a(a aVar, t08 t08Var) {
                this.b = aVar;
                this.c = t08Var;
            }

            @Override // defpackage.t08
            public final void onError(Throwable th) {
                this.c.onError(th);
            }

            @Override // defpackage.t08
            public final void onSubscribe(cp2 cp2Var) {
                ip2.e(this.b, cp2Var);
            }

            @Override // defpackage.t08
            public final void onSuccess(R r) {
                this.c.onSuccess(r);
            }
        }

        public a(t08<? super R> t08Var, xl3<? super T, ? extends c18<? extends R>> xl3Var) {
            this.b = t08Var;
            this.c = xl3Var;
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
            t08<? super R> t08Var = this.b;
            try {
                c18<? extends R> c18VarApply = this.c.apply(t);
                nq5.a(c18VarApply, "The single returned by the mapper is null");
                c18<? extends R> c18Var = c18VarApply;
                if (isDisposed()) {
                    return;
                }
                c18Var.d(new C0183a(this, t08Var));
            } catch (Throwable th) {
                m13.d(th);
                t08Var.onError(th);
            }
        }
    }

    public e08(mz7 mz7Var, xl3 xl3Var) {
        this.c = xl3Var;
        this.b = mz7Var;
    }

    @Override // defpackage.mz7
    public final void h(t08<? super R> t08Var) {
        this.b.d(new a(t08Var, this.c));
    }
}
