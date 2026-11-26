package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class x16 implements Runnable {
    public final /* synthetic */ a26 b;

    public x16(a26 a26Var) {
        this.b = a26Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        lp6 lp6Var = this.b.e;
        lp6Var.b.a(new zp6(lp6Var));
    }
}
