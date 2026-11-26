package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public abstract class x1<I, O, F, T> extends xh3.a<O> implements Runnable {
    public static final /* synthetic */ int l = 0;
    public ListenableFuture<? extends I> j;
    public F k;

    public static final class a<I, O> extends x1<I, O, ks<? super I, ? extends O>, ListenableFuture<? extends O>> {
        @Override // defpackage.x1
        public final Object q(Object obj, Object obj2) {
            ks ksVar = (ks) obj;
            ListenableFuture<O> listenableFutureApply = ksVar.apply(obj2);
            o8.m(listenableFutureApply, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", ksVar);
            return listenableFutureApply;
        }

        @Override // defpackage.x1
        public final void r(Object obj) {
            n((ListenableFuture) obj);
        }
    }

    public static final class b<I, O> extends x1<I, O, lm3<? super I, ? extends O>, O> {
        @Override // defpackage.x1
        public final Object q(Object obj, Object obj2) {
            return ((lm3) obj).apply(obj2);
        }

        @Override // defpackage.x1
        public final void r(O o) {
            l(o);
        }
    }

    public x1(ListenableFuture<? extends I> listenableFuture, F f) {
        listenableFuture.getClass();
        this.j = listenableFuture;
        f.getClass();
        this.k = f;
    }

    public static a p(ListenableFuture listenableFuture, ks ksVar, Executor executor) {
        a aVar = new a(listenableFuture, ksVar);
        listenableFuture.addListener(aVar, nd5.a(executor, aVar));
        return aVar;
    }

    @Override // defpackage.l0
    public final void d() {
        ListenableFuture<? extends I> listenableFuture = this.j;
        if ((listenableFuture != null) & (this.b instanceof l0.a)) {
            listenableFuture.cancel(o());
        }
        this.j = null;
        this.k = null;
    }

    @Override // defpackage.l0
    public final String k() {
        String str;
        ListenableFuture<? extends I> listenableFuture = this.j;
        F f = this.k;
        String strK = super.k();
        if (listenableFuture != null) {
            str = "inputFuture=[" + listenableFuture + "], ";
        } else {
            str = "";
        }
        if (f == null) {
            if (strK != null) {
                return str.concat(strK);
            }
            return null;
        }
        return str + "function=[" + f + "]";
    }

    public abstract T q(F f, I i);

    public abstract void r(T t);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        ListenableFuture<? extends I> listenableFuture = this.j;
        F f = this.k;
        if (((this.b instanceof l0.a) | (listenableFuture == null)) || (f == null)) {
            return;
        }
        this.j = null;
        if (listenableFuture.isCancelled()) {
            n(listenableFuture);
            return;
        }
        try {
            try {
                Object objQ = q(f, en3.V(listenableFuture));
                this.k = null;
                r(objQ);
            } catch (Throwable th) {
                try {
                    if (th instanceof InterruptedException) {
                        Thread.currentThread().interrupt();
                    }
                    m(th);
                } finally {
                    this.k = null;
                }
            }
        } catch (Error e) {
            m(e);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (ExecutionException e2) {
            m(e2.getCause());
        } catch (Exception e3) {
            m(e3);
        }
    }
}
