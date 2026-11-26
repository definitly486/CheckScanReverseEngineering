package defpackage;

/* JADX INFO: loaded from: classes3.dex */
public final class y6 implements Runnable {
    public final /* synthetic */ z6 b;

    public y6(z6 z6Var) {
        this.b = z6Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        z6 z6Var = this.b;
        while (true) {
            try {
                z6Var.b((z6.a) z6Var.c.remove());
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
    }
}
