package defpackage;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public abstract class hj3<V> extends oj3 implements Future<V> {
    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return ((ij3.a) this).b.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public final V get() {
        return ((ij3.a) this).b.get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return ((ij3.a) this).b.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return ((ij3.a) this).b.isDone();
    }

    @Override // java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) {
        return ((ij3.a) this).b.get(j, timeUnit);
    }
}
