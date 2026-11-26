package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes4.dex */
public final class u24<V> implements ListenableFuture<V> {
    public static final u24 c = new u24(null);
    public static final wn4 d = new wn4(u24.class);
    public final V b;

    public static final class a<V> extends l0.f<V> {
        public static final a<Object> i;

        static {
            i = m0.g ? null : new a<>();
        }

        public a() {
            cancel(false);
        }
    }

    public static final class b<V> extends l0.f<V> {
    }

    public u24(V v) {
        this.b = v;
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void addListener(Runnable runnable, Executor executor) {
        o8.l(runnable, "Runnable was null.");
        o8.l(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (Exception e) {
            d.a().log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e);
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) {
        timeUnit.getClass();
        return this.b;
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return true;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=SUCCESS, result=[");
        return l2.d(sb, this.b, "]]");
    }

    @Override // java.util.concurrent.Future
    public final V get() {
        return this.b;
    }
}
