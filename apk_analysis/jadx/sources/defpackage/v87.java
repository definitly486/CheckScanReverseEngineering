package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class v87 extends t07<Runnable> {
    @Override // defpackage.t07
    public final void a(Runnable runnable) {
        runnable.run();
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        return "RunnableDisposable(disposed=" + isDisposed() + ", " + get() + ")";
    }
}
