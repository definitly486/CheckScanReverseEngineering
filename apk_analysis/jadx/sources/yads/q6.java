package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class q6 implements b4 {
    public final /* synthetic */ r6 a;

    public q6(r6 r6Var) {
        this.a = r6Var;
    }

    @Override // yads.b4
    public final void a() {
        this.a.b();
    }

    @Override // yads.b4
    public final void b() {
        r6 r6Var = this.a;
        int i = r6Var.m - 1;
        if (i == r6Var.d.c && !r6Var.n) {
            r6Var.n = true;
            r6Var.b.b();
        }
        u6 u6Var = (u6) defpackage.qn1.W(i, this.a.k);
        if ((u6Var != null ? u6Var.c : null) != w6.MANUAL || u6Var.b == null) {
            this.a.b();
        }
    }
}
