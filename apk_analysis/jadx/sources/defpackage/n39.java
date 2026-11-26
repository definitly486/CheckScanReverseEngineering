package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;

/* JADX INFO: loaded from: classes4.dex */
public final class n39<V> extends xh3.a<V> implements RunnableFuture<V> {
    public volatile y94<?> j;

    public final class a extends y94<ListenableFuture<V>> {
        public final js<V> d;

        public a(js<V> jsVar) {
            jsVar.getClass();
            this.d = jsVar;
        }

        @Override // defpackage.y94
        public final void a(Throwable th) {
            n39.this.m(th);
        }

        @Override // defpackage.y94
        public final void b(Object obj) {
            n39.this.n((ListenableFuture) obj);
        }

        @Override // defpackage.y94
        public final boolean e() {
            return n39.this.isDone();
        }

        @Override // defpackage.y94
        public final Object f() {
            js<V> jsVar = this.d;
            ListenableFuture<V> listenableFutureCall = jsVar.call();
            o8.m(listenableFutureCall, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", jsVar);
            return listenableFutureCall;
        }

        @Override // defpackage.y94
        public final String g() {
            return this.d.toString();
        }
    }

    public final class b extends y94<V> {
        public final Callable<V> d;

        public b(Callable<V> callable) {
            callable.getClass();
            this.d = callable;
        }

        @Override // defpackage.y94
        public final void a(Throwable th) {
            n39.this.m(th);
        }

        @Override // defpackage.y94
        public final void b(V v) {
            n39.this.l(v);
        }

        @Override // defpackage.y94
        public final boolean e() {
            return n39.this.isDone();
        }

        @Override // defpackage.y94
        public final V f() {
            return this.d.call();
        }

        @Override // defpackage.y94
        public final String g() {
            return this.d.toString();
        }
    }

    public n39(Callable<V> callable) {
        this.j = new b(callable);
    }

    @Override // defpackage.l0
    public final void d() {
        y94<?> y94Var;
        if (o() && (y94Var = this.j) != null) {
            y94Var.d();
        }
        this.j = null;
    }

    @Override // defpackage.l0
    public final String k() {
        y94<?> y94Var = this.j;
        if (y94Var == null) {
            return super.k();
        }
        return "task=[" + y94Var + "]";
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        y94<?> y94Var = this.j;
        if (y94Var != null) {
            y94Var.run();
        }
        this.j = null;
    }
}
