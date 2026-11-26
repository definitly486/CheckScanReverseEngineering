package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class tv1 implements Runnable {
    public final /* synthetic */ xv1 b;

    public tv1(xv1 xv1Var) {
        this.b = xv1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        xv1 xv1Var = this.b;
        int i = xv1Var.b - 1;
        xv1Var.b = i;
        if (i == 0 && xv1Var.d) {
            xv1Var.a.a(xv1Var.c != 0);
        }
    }
}
