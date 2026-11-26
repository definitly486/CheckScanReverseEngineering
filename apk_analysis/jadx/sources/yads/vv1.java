package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class vv1 implements Runnable {
    public final /* synthetic */ xv1 b;

    public vv1(xv1 xv1Var) {
        this.b = xv1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        xv1 xv1Var = this.b;
        xv1Var.d = true;
        if (xv1Var.b == 0) {
            xv1Var.a.a(xv1Var.c != 0);
        }
    }
}
