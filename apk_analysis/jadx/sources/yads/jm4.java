package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class jm4 implements ut4, tx5 {
    public final long a;
    public final /* synthetic */ km4 b;

    public jm4(km4 km4Var, long j) {
        this.b = km4Var;
        this.a = j;
    }

    @Override // yads.ut4
    /* JADX INFO: renamed from: a */
    public final void mo9532a() {
        km4 km4Var = this.b;
        m15 m15Var = km4Var.d;
        if (m15Var != null) {
            m15Var.a();
        }
        b4 b4Var = km4Var.b;
        if (b4Var != null) {
            b4Var.b();
        }
        km4Var.a.a.remove(km4Var);
        km4Var.b = null;
        km4Var.d = null;
    }

    @Override // yads.tx5
    public final void a(long j, long j2) {
        m15 m15Var = this.b.d;
        if (m15Var != null) {
            long j3 = this.a;
            m15Var.a(j3, j3 - j);
        }
    }
}
