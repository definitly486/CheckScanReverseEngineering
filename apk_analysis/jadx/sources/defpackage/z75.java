package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class z75<T> extends b1<T, T> {
    public final a75 c;

    public static final class a<T> extends AtomicReference<cp2> implements t75<T>, cp2 {
        public final t75<? super T> b;
        public final x75<? extends T> c;

        /* JADX INFO: renamed from: z75$a$a, reason: collision with other inner class name */
        public static final class C0371a<T> implements t75<T> {
            public final t75<? super T> b;
            public final a c;

            public C0371a(t75 t75Var, a aVar) {
                this.b = t75Var;
                this.c = aVar;
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
                ip2.g(this.c, cp2Var);
            }

            @Override // defpackage.t75
            public final void onSuccess(T t) {
                this.b.onSuccess(t);
            }
        }

        public a(t75 t75Var, a75 a75Var) {
            this.b = t75Var;
            this.c = a75Var;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            ip2.a(this);
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return ip2.d(get());
        }

        @Override // defpackage.t75
        public final void onComplete() {
            cp2 cp2Var = get();
            if (cp2Var == ip2.DISPOSED || !compareAndSet(cp2Var, null)) {
                return;
            }
            this.c.a(new C0371a(this.b, this));
        }

        @Override // defpackage.t75
        public final void onError(Throwable th) {
            this.b.onError(th);
        }

        @Override // defpackage.t75
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.g(this, cp2Var)) {
                this.b.onSubscribe(this);
            }
        }

        @Override // defpackage.t75
        public final void onSuccess(T t) {
            this.b.onSuccess(t);
        }
    }

    public z75(a75 a75Var, a75 a75Var2) {
        super(a75Var);
        this.c = a75Var2;
    }

    @Override // defpackage.a75
    public final void d(t75<? super T> t75Var) {
        this.b.a(new a(t75Var, this.c));
    }
}
