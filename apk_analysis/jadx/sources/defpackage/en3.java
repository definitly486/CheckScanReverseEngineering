package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes4.dex */
public final class en3 extends y14 {

    public static final class a<V> implements Runnable {
        public final ListenableFuture<V> b;
        public final xm3<? super V> c;

        public a(ListenableFuture<V> listenableFuture, xm3<? super V> xm3Var) {
            this.b = listenableFuture;
            this.c = xm3Var;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public final void run() {
            Throwable thA;
            ListenableFuture<V> listenableFuture = this.b;
            boolean z = listenableFuture instanceof j94;
            xm3<? super V> xm3Var = this.c;
            if (z && (thA = ((j94) listenableFuture).a()) != null) {
                xm3Var.onFailure(thA);
                return;
            }
            try {
                xm3Var.onSuccess((Object) en3.V(listenableFuture));
            } catch (ExecutionException e) {
                xm3Var.onFailure(e.getCause());
            } catch (Throwable th) {
                xm3Var.onFailure(th);
            }
        }

        public final String toString() {
            od5.a aVarB = od5.b(this);
            od5.a.b bVar = new od5.a.b();
            aVarB.c.c = bVar;
            aVarB.c = bVar;
            bVar.b = this.c;
            return aVarB.toString();
        }
    }

    public static final class b<V> extends l0.f<V> implements Runnable {
        public ListenableFuture<V> i;

        @Override // defpackage.l0
        public final void d() {
            this.i = null;
        }

        @Override // defpackage.l0
        public final String k() {
            ListenableFuture<V> listenableFuture = this.i;
            if (listenableFuture == null) {
                return null;
            }
            return "delegate=[" + listenableFuture + "]";
        }

        @Override // java.lang.Runnable
        public final void run() {
            ListenableFuture<V> listenableFuture = this.i;
            if (listenableFuture != null) {
                n(listenableFuture);
            }
        }
    }

    public static <V> void U(ListenableFuture<V> listenableFuture, xm3<? super V> xm3Var, Executor executor) {
        listenableFuture.addListener(new a(listenableFuture, xm3Var), executor);
    }

    public static <V> V V(Future<V> future) {
        V v;
        o8.q("Future was expected to be done: %s", future.isDone(), future);
        boolean z = false;
        while (true) {
            try {
                v = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return v;
    }

    public static u24.b W(Exception exc) {
        u24.b bVar = new u24.b();
        bVar.m(exc);
        return bVar;
    }

    public static u24 X(Object obj) {
        return obj == null ? u24.c : new u24(obj);
    }

    public static <V> ListenableFuture<V> Y(ListenableFuture<V> listenableFuture) {
        if (listenableFuture.isDone()) {
            return listenableFuture;
        }
        b bVar = new b();
        bVar.i = listenableFuture;
        listenableFuture.addListener(bVar, jn2.INSTANCE);
        return bVar;
    }
}
