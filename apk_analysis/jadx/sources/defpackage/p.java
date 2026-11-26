package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.lang.Throwable;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class p<V, X extends Throwable, F, T> extends xh3.a<V> implements Runnable {
    public static final /* synthetic */ int m = 0;
    public ListenableFuture<? extends V> j;
    public Class<X> k;
    public F l;

    public static final class a<V, X extends Throwable> extends p<V, X, ks<? super X, ? extends V>, ListenableFuture<? extends V>> {
        @Override // defpackage.p
        public final Object p(Object obj, Throwable th) {
            ks ksVar = (ks) obj;
            ListenableFuture listenableFutureApply = ksVar.apply(th);
            o8.m(listenableFutureApply, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", ksVar);
            return listenableFutureApply;
        }

        @Override // defpackage.p
        public final void q(Object obj) {
            n((ListenableFuture) obj);
        }
    }

    public static final class b<V, X extends Throwable> extends p<V, X, lm3<? super X, ? extends V>, V> {
        @Override // defpackage.p
        public final Object p(Object obj, Throwable th) {
            return ((lm3) obj).apply(th);
        }

        @Override // defpackage.p
        public final void q(V v) {
            l(v);
        }
    }

    public p(ListenableFuture<? extends V> listenableFuture, Class<X> cls, F f) {
        listenableFuture.getClass();
        this.j = listenableFuture;
        this.k = cls;
        f.getClass();
        this.l = f;
    }

    @Override // defpackage.l0
    public final void d() {
        ListenableFuture<? extends V> listenableFuture = this.j;
        if ((listenableFuture != null) & (this.b instanceof l0.a)) {
            listenableFuture.cancel(o());
        }
        this.j = null;
        this.k = null;
        this.l = null;
    }

    @Override // defpackage.l0
    public final String k() {
        String str;
        ListenableFuture<? extends V> listenableFuture = this.j;
        Class<X> cls = this.k;
        F f = this.l;
        String strK = super.k();
        if (listenableFuture != null) {
            str = "inputFuture=[" + listenableFuture + "], ";
        } else {
            str = "";
        }
        if (cls == null || f == null) {
            if (strK != null) {
                return str.concat(strK);
            }
            return null;
        }
        return str + "exceptionType=[" + cls + "], fallback=[" + f + "]";
    }

    public abstract T p(F f, X x);

    public abstract void q(T t);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v5, types: [F, java.lang.Class<X extends java.lang.Throwable>] */
    @Override // java.lang.Runnable
    public final void run() {
        Object objV;
        ListenableFuture<? extends V> listenableFuture = this.j;
        Class<X> cls = this.k;
        F f = this.l;
        if (((f == null) || ((listenableFuture == 0) | (cls == null))) || (this.b instanceof l0.a)) {
            return;
        }
        ?? r3 = (Class<X>) null;
        this.j = null;
        try {
            th = listenableFuture instanceof j94 ? ((j94) listenableFuture).a() : null;
            objV = th == null ? en3.V(listenableFuture) : null;
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (cause == null) {
                cause = new NullPointerException("Future type " + listenableFuture.getClass() + " threw " + e.getClass() + " without a cause");
            }
            th = cause;
        } catch (Throwable th) {
            th = th;
        }
        if (th == null) {
            l(objV);
            return;
        }
        if (!cls.isInstance(th)) {
            n(listenableFuture);
            return;
        }
        try {
            Object objP = p(f, th);
            this.k = null;
            this.l = null;
            q(objP);
        } catch (Throwable th2) {
            try {
                if (th2 instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
                m(th2);
            } finally {
                this.k = null;
                this.l = null;
            }
        }
    }
}
