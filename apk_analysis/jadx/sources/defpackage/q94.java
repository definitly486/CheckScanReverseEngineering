package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class q94 implements Runnable {
    public final /* synthetic */ p94 b;

    public q94(p94 p94Var) {
        this.b = p94Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        p94 p94Var = this.b;
        p94Var.r = null;
        p94Var.j.a(n91.a.INFO, "CONNECTING after backoff");
        p94Var.f(cx1.CONNECTING);
        p94Var.i();
    }
}
