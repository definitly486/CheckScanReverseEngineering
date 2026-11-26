package defpackage;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes5.dex */
public final class gh3<T> extends k0<T, T> implements qx1<T> {
    public final gh3 d;

    public static final class a<T> extends AtomicLong implements rh3<T>, bc8 {
        public final wb8<? super T> b;
        public final qx1<? super T> c;
        public bc8 d;
        public boolean e;

        public a(wb8 wb8Var, gh3 gh3Var) {
            this.b = wb8Var;
            this.c = gh3Var;
        }

        @Override // defpackage.wb8
        public final void a(bc8 bc8Var) {
            if (hc8.f(this.d, bc8Var)) {
                this.d = bc8Var;
                this.b.a(this);
                bc8Var.request(Long.MAX_VALUE);
            }
        }

        @Override // defpackage.bc8
        public final void cancel() {
            this.d.cancel();
        }

        @Override // defpackage.wb8
        public final void onComplete() {
            if (this.e) {
                return;
            }
            this.e = true;
            this.b.onComplete();
        }

        @Override // defpackage.wb8
        public final void onError(Throwable th) {
            if (this.e) {
                d97.b(th);
            } else {
                this.e = true;
                this.b.onError(th);
            }
        }

        @Override // defpackage.wb8
        public final void onNext(T t) {
            if (this.e) {
                return;
            }
            if (get() != 0) {
                this.b.onNext(t);
                m00.e(this, 1L);
                return;
            }
            try {
                this.c.accept(t);
            } catch (Throwable th) {
                m13.d(th);
                cancel();
                onError(th);
            }
        }

        @Override // defpackage.bc8
        public final void request(long j) {
            if (hc8.e(j)) {
                m00.c(this, j);
            }
        }
    }

    public gh3(ah3 ah3Var) {
        super(ah3Var);
        this.d = this;
    }

    @Override // defpackage.qx1
    public final void accept(T t) {
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super T> wb8Var) {
        this.c.f(new a(wb8Var, this.d));
    }
}
