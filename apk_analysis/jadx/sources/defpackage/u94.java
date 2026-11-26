package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class u94 implements Runnable {
    public final /* synthetic */ p94 b;

    public u94(p94 p94Var) {
        this.b = p94Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        p94 p94Var = this.b;
        p94Var.j.a(n91.a.INFO, "Terminated");
        ez4 ez4Var = ez4.this;
        ez4Var.A.remove(p94Var);
        ez4Var.i();
    }
}
