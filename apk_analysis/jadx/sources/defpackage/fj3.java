package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class fj3<V> extends xh3<V> {
    public final ListenableFuture<V> j;

    public fj3(ListenableFuture<V> listenableFuture) {
        listenableFuture.getClass();
        this.j = listenableFuture;
    }

    @Override // defpackage.l0, com.google.common.util.concurrent.ListenableFuture
    public final void addListener(Runnable runnable, Executor executor) {
        this.j.addListener(runnable, executor);
    }

    @Override // defpackage.l0, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.j.cancel(z);
    }

    @Override // defpackage.l0, java.util.concurrent.Future
    public final V get() {
        return this.j.get();
    }

    @Override // defpackage.l0, java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.j.isCancelled();
    }

    @Override // defpackage.l0, java.util.concurrent.Future
    public final boolean isDone() {
        return this.j.isDone();
    }

    @Override // defpackage.l0
    public final String toString() {
        return this.j.toString();
    }

    @Override // defpackage.l0, java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) {
        return this.j.get(j, timeUnit);
    }
}
