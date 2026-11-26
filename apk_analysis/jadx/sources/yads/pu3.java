package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class pu3 implements Runnable {
    public final Object b;

    public pu3(ou3 ou3Var) {
        this.b = ou3Var;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, yads.ou3] */
    @Override // java.lang.Runnable
    public final void run() {
        this.b.b();
    }
}
