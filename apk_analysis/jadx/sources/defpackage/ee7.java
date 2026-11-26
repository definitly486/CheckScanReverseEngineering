package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ee7 extends g0 implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        this.c = Thread.currentThread();
        try {
            this.b.run();
            this.c = null;
        } catch (Throwable th) {
            this.c = null;
            lazySet(g0.d);
            d97.b(th);
        }
    }
}
