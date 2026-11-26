package defpackage;

import io.reactivex.exceptions.MissingBackpressureException;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes5.dex */
public final class hh3<T> extends k0<T, T> {

    public static final class a<T> extends AtomicLong implements rh3<T>, bc8 {
        public final wb8<? super T> b;
        public bc8 c;
        public boolean d;

        public a(wb8<? super T> wb8Var) {
            this.b = wb8Var;
        }

        @Override // defpackage.wb8
        public final void a(bc8 bc8Var) {
            if (hc8.f(this.c, bc8Var)) {
                this.c = bc8Var;
                this.b.a(this);
                bc8Var.request(Long.MAX_VALUE);
            }
        }

        @Override // defpackage.bc8
        public final void cancel() {
            this.c.cancel();
        }

        @Override // defpackage.wb8
        public final void onComplete() {
            if (this.d) {
                return;
            }
            this.d = true;
            this.b.onComplete();
        }

        @Override // defpackage.wb8
        public final void onError(Throwable th) {
            if (this.d) {
                d97.b(th);
            } else {
                this.d = true;
                this.b.onError(th);
            }
        }

        @Override // defpackage.wb8
        public final void onNext(T t) {
            if (this.d) {
                return;
            }
            if (get() != 0) {
                this.b.onNext(t);
                m00.e(this, 1L);
            } else {
                this.c.cancel();
                onError(new MissingBackpressureException("could not emit value due to lack of requests"));
            }
        }

        @Override // defpackage.bc8
        public final void request(long j) {
            if (hc8.e(j)) {
                m00.c(this, j);
            }
        }
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super T> wb8Var) {
        this.c.f(new a(wb8Var));
    }
}
