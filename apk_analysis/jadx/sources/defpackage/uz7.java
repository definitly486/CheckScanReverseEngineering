package defpackage;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public final class uz7<T> extends mz7<T> {
    public final mz7 b;
    public final h6 c;

    public static final class a<T> extends AtomicInteger implements t08<T>, cp2 {
        public final t08<? super T> b;
        public final h6 c;
        public cp2 d;

        public a(t08<? super T> t08Var, h6 h6Var) {
            this.b = t08Var;
            this.c = h6Var;
        }

        public final void a() {
            if (compareAndSet(0, 1)) {
                try {
                    this.c.run();
                } catch (Throwable th) {
                    m13.d(th);
                    d97.b(th);
                }
            }
        }

        @Override // defpackage.cp2
        public final void dispose() {
            this.d.dispose();
            a();
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.d.isDisposed();
        }

        @Override // defpackage.t08
        public final void onError(Throwable th) {
            this.b.onError(th);
            a();
        }

        @Override // defpackage.t08
        public final void onSubscribe(cp2 cp2Var) {
            if (ip2.i(this.d, cp2Var)) {
                this.d = cp2Var;
                this.b.onSubscribe(this);
            }
        }

        @Override // defpackage.t08
        public final void onSuccess(T t) {
            this.b.onSuccess(t);
            a();
        }
    }

    public uz7(mz7 mz7Var, h6 h6Var) {
        this.b = mz7Var;
        this.c = h6Var;
    }

    @Override // defpackage.mz7
    public final void h(t08<? super T> t08Var) {
        this.b.d(new a(t08Var, this.c));
    }
}
