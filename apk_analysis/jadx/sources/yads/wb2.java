package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class wb2 implements Runnable {
    public final /* synthetic */ xb2 b;
    public final /* synthetic */ qb2 c;

    public wb2(xb2 xb2Var, qb2 qb2Var, vq0 vq0Var) {
        this.b = xb2Var;
        this.c = qb2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.a(this.c.g);
    }
}
