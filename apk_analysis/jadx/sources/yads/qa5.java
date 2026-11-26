package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class qa5 implements j2 {
    public final /* synthetic */ sa5 a;

    public qa5(sa5 sa5Var) {
        this.a = sa5Var;
    }

    @Override // yads.j2
    public final void a() {
        n03 n03Var = this.a.g;
        if (n03Var != null) {
            n03Var.resume();
        }
    }

    @Override // yads.j2
    public final void b() {
        n03 n03Var = this.a.g;
        if (n03Var != null) {
            n03Var.pause();
        }
    }
}
