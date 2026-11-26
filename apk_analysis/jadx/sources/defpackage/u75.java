package defpackage;

import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class u75<T> extends b1<T, T> {
    public final xl3<? super Throwable, ? extends x75<? extends T>> c;
    public final boolean d;

    public static final class a<T> extends AtomicReference<cp2> implements t75<T>, cp2 {
        public final t75<? super T> b;
        public final xl3<? super Throwable, ? extends x75<? extends T>> c;
        public final boolean d;

        /* JADX INFO: renamed from: u75$a$a, reason: collision with other inner class name */
        public static final class C0338a<T> implements t75<T> {
            public final t75<? super T> b;
            public final a c;

            public C0338a(t75 t75Var, a aVar) {
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

        public a(t75<? super T> t75Var, xl3<? super Throwable, ? extends x75<? extends T>> xl3Var, boolean z) {
            this.b = t75Var;
            this.c = xl3Var;
            this.d = z;
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
            this.b.onComplete();
        }

        @Override // defpackage.t75
        public final void onError(Throwable th) {
            boolean z = this.d;
            t75<? super T> t75Var = this.b;
            if (!z && !(th instanceof Exception)) {
                t75Var.onError(th);
                return;
            }
            try {
                x75<? extends T> x75VarApply = this.c.apply(th);
                nq5.a(x75VarApply, "The resumeFunction returned a null MaybeSource");
                x75<? extends T> x75Var = x75VarApply;
                ip2.e(this, null);
                x75Var.a(new C0338a(t75Var, this));
            } catch (Throwable th2) {
                m13.d(th2);
                t75Var.onError(new CompositeException(th, th2));
            }
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

    public u75(a75 a75Var, xl3 xl3Var) {
        super(a75Var);
        this.c = xl3Var;
        this.d = true;
    }

    @Override // defpackage.a75
    public final void d(t75<? super T> t75Var) {
        this.b.a(new a(t75Var, this.c, this.d));
    }
}
