package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class j08<T, R> extends tq5<R> {
    public final mz7 b;
    public final xl3<? super T, ? extends wr5<? extends R>> c;

    public static final class a<T, R> extends AtomicReference<cp2> implements ls5<R>, t08<T>, cp2 {
        public final ls5<? super R> b;
        public final xl3<? super T, ? extends wr5<? extends R>> c;

        public a(ls5<? super R> ls5Var, xl3<? super T, ? extends wr5<? extends R>> xl3Var) {
            this.b = ls5Var;
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

        @Override // defpackage.ls5
        public final void onComplete() {
            this.b.onComplete();
        }

        @Override // defpackage.ls5
        public final void onError(Throwable th) {
            this.b.onError(th);
        }

        @Override // defpackage.ls5
        public final void onNext(R r) {
            this.b.onNext(r);
        }

        @Override // defpackage.ls5
        public final void onSubscribe(cp2 cp2Var) {
            ip2.e(this, cp2Var);
        }

        @Override // defpackage.t08
        public final void onSuccess(T t) {
            try {
                wr5<? extends R> wr5VarApply = this.c.apply(t);
                nq5.a(wr5VarApply, "The mapper returned a null Publisher");
                wr5VarApply.a(this);
            } catch (Throwable th) {
                m13.d(th);
                this.b.onError(th);
            }
        }
    }

    public j08(mz7 mz7Var, xl3 xl3Var) {
        this.b = mz7Var;
        this.c = xl3Var;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super R> ls5Var) {
        a aVar = new a(ls5Var, this.c);
        ls5Var.onSubscribe(aVar);
        this.b.d(aVar);
    }
}
