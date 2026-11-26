package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class uv1 implements Runnable {
    public final /* synthetic */ xv1 b;

    public uv1(xv1 xv1Var) {
        this.b = xv1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        xv1 xv1Var = this.b;
        xv1Var.c++;
        xv1Var.b();
    }
}
