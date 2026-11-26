package defpackage;

import io.reactivex.exceptions.CompositeException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class z08<T> extends mz7<T> {
    public final mz7 b;
    public final rm3.j c;

    public static final class a<T> extends AtomicReference<cp2> implements t08<T>, cp2 {
        public final t08<? super T> b;
        public final xl3<? super Throwable, ? extends c18<? extends T>> c;

        public a(t08 t08Var, rm3.j jVar) {
            this.b = t08Var;
            this.c = jVar;
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
            t08<? super T> t08Var = this.b;
            try {
                c18<? extends T> c18VarApply = this.c.apply(th);
                nq5.a(c18VarApply, "The nextFunction returned a null SingleSource.");
                c18VarApply.d(new b67(this, t08Var));
            } catch (Throwable th2) {
                m13.d(th2);
                t08Var.onError(new CompositeException(th, th2));
            }
        }

        @Override // defpackage.t08
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.g(this, cp2Var)) {
                this.b.onSubscribe(this);
            }
        }

        @Override // defpackage.t08
        public final void onSuccess(T t) {
            this.b.onSuccess(t);
        }
    }

    public z08(mz7 mz7Var, rm3.j jVar) {
        this.b = mz7Var;
        this.c = jVar;
    }

    @Override // defpackage.mz7
    public final void h(t08<? super T> t08Var) {
        this.b.d(new a(t08Var, this.c));
    }
}
