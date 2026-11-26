package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class nq5 implements zs2 {
    public final long b;
    public final zs2 c;

    public nq5(long j, zs2 zs2Var) {
        this.b = j;
        this.c = zs2Var;
    }

    @Override // yads.zs2
    public final void a(sh5 sh5Var) {
        this.c.a(new mq5(this, sh5Var));
    }

    @Override // yads.zs2
    public final void a() {
        this.c.a();
    }

    @Override // yads.zs2
    public final k06 a(int i, int i2) {
        return this.c.a(i, i2);
    }
}
