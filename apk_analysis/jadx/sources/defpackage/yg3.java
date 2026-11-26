package defpackage;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes5.dex */
public final class yg3<T> extends gg3<T> {
    public final ListenableFuture c;

    public yg3(ListenableFuture listenableFuture) {
        this.c = listenableFuture;
    }

    @Override // defpackage.gg3
    public final void g(wb8<? super T> wb8Var) {
        rk2 rk2Var = new rk2(wb8Var);
        wb8Var.a(rk2Var);
        try {
            V v = this.c.get();
            if (v == 0) {
                wb8Var.onError(new NullPointerException("The future returned null"));
            } else {
                rk2Var.b(v);
            }
        } catch (Throwable th) {
            m13.d(th);
            if (rk2Var.get() == 4) {
                return;
            }
            wb8Var.onError(th);
        }
    }
}
