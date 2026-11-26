package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class d60 implements j2 {
    public final /* synthetic */ e60 a;

    public d60(e60 e60Var) {
        this.a = e60Var;
    }

    @Override // yads.j2
    public final void a() {
        n03 n03Var = this.a.i;
        if (n03Var != null) {
            n03Var.resume();
        }
    }

    @Override // yads.j2
    public final void b() {
        n03 n03Var = this.a.i;
        if (n03Var != null) {
            n03Var.pause();
        }
    }
}
