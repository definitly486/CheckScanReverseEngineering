package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class gb5 implements j2 {
    public final kk4 a;

    public gb5(kk4 kk4Var) {
        this.a = kk4Var;
    }

    @Override // yads.j2
    public final void a() {
        n03 n03Var = this.a.b;
        if (n03Var != null) {
            n03Var.resume();
        }
    }

    @Override // yads.j2
    public final void b() {
        n03 n03Var = this.a.b;
        if (n03Var != null) {
            n03Var.pause();
        }
    }
}
