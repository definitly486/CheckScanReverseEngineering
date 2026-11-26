package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class mq5 implements sh5 {
    public final /* synthetic */ sh5 a;
    public final /* synthetic */ nq5 b;

    public mq5(nq5 nq5Var, sh5 sh5Var) {
        this.b = nq5Var;
        this.a = sh5Var;
    }

    @Override // yads.sh5
    public final qh5 b(long j) {
        qh5 qh5VarB = this.a.b(j);
        uh5 uh5Var = qh5VarB.a;
        long j2 = uh5Var.a;
        long j3 = uh5Var.b;
        long j4 = this.b.b;
        uh5 uh5Var2 = new uh5(j2, j3 + j4);
        uh5 uh5Var3 = qh5VarB.b;
        return new qh5(uh5Var2, new uh5(uh5Var3.a, uh5Var3.b + j4));
    }

    @Override // yads.sh5
    public final long c() {
        return this.a.c();
    }

    @Override // yads.sh5
    public final boolean b() {
        return this.a.b();
    }
}
