package defpackage;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes5.dex */
public final class k75<T, R> extends tq5<R> {
    public final r75 b;
    public final ki0 c;

    public static final class a<T, R> extends AtomicReference<cp2> implements ls5<R>, t75<T>, cp2 {
        public final ls5<? super R> b;
        public final xl3<? super T, ? extends wr5<? extends R>> c;

        public a(ls5 ls5Var, ki0 ki0Var) {
            this.b = ls5Var;
            this.c = ki0Var;
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

        @Override // defpackage.t75
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

    public k75(r75 r75Var, ki0 ki0Var) {
        this.b = r75Var;
        this.c = ki0Var;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super R> ls5Var) {
        a aVar = new a(ls5Var, this.c);
        ls5Var.onSubscribe(aVar);
        this.b.a(aVar);
    }
}
