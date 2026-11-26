package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes4.dex */
public final class go1<V> extends lb<Object, V> {
    public go1<V>.c<?> p;

    public final class a extends go1<V>.c<ListenableFuture<V>> {
        public final js<V> f;

        public a(js<V> jsVar, Executor executor) {
            super(executor);
            jsVar.getClass();
            this.f = jsVar;
        }

        @Override // defpackage.y94
        public final Object f() {
            js<V> jsVar = this.f;
            ListenableFuture<V> listenableFutureCall = jsVar.call();
            o8.m(listenableFutureCall, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", jsVar);
            return listenableFutureCall;
        }

        @Override // defpackage.y94
        public final String g() {
            return this.f.toString();
        }

        @Override // go1.c
        public final void j(Object obj) {
            go1.this.n((ListenableFuture) obj);
        }
    }

    public final class b extends go1<V>.c<V> {
        public final Callable<V> f;

        public b(Callable<V> callable, Executor executor) {
            super(executor);
            callable.getClass();
            this.f = callable;
        }

        @Override // defpackage.y94
        public final V f() {
            return this.f.call();
        }

        @Override // defpackage.y94
        public final String g() {
            return this.f.toString();
        }

        @Override // go1.c
        public final void j(V v) {
            go1.this.l(v);
        }
    }

    public abstract class c<T> extends y94<T> {
        public final Executor d;

        public c(Executor executor) {
            executor.getClass();
            this.d = executor;
        }

        @Override // defpackage.y94
        public final void a(Throwable th) {
            go1 go1Var = go1.this;
            go1Var.p = null;
            if (th instanceof ExecutionException) {
                go1Var.m(((ExecutionException) th).getCause());
            } else if (th instanceof CancellationException) {
                go1Var.cancel(false);
            } else {
                go1Var.m(th);
            }
        }

        @Override // defpackage.y94
        public final void b(T t) {
            go1.this.p = null;
            j(t);
        }

        @Override // defpackage.y94
        public final boolean e() {
            return go1.this.isDone();
        }

        public abstract void j(T t);
    }

    @Override // defpackage.l0
    public final void j() {
        go1<V>.c<?> cVar = this.p;
        if (cVar != null) {
            cVar.d();
        }
    }

    @Override // defpackage.lb
    public final void q() {
        go1<V>.c<?> cVar = this.p;
        if (cVar != null) {
            try {
                cVar.d.execute(cVar);
            } catch (RejectedExecutionException e) {
                go1.this.m(e);
            }
        }
    }

    @Override // defpackage.lb
    public final void u(lb.a aVar) {
        super.u(aVar);
        if (aVar == lb.a.OUTPUT_FUTURE_DONE) {
            this.p = null;
        }
    }
}
