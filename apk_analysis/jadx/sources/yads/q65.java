package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class q65 implements Runnable {
    public final am4 b;
    public final v65 c;

    public q65(am4 am4Var, v65 v65Var) {
        this.b = am4Var;
        this.c = v65Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.b.setVisibility(4);
        this.c.a.setVisibility(0);
    }
}
