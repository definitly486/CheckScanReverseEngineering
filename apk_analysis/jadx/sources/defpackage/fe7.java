package defpackage;

import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes5.dex */
public final class fe7 extends g0 implements Callable<Void> {
    @Override // java.util.concurrent.Callable
    public final Void call() {
        FutureTask<Void> futureTask = g0.d;
        this.c = Thread.currentThread();
        try {
            this.b.run();
            return null;
        } finally {
            lazySet(futureTask);
            this.c = null;
        }
    }
}
