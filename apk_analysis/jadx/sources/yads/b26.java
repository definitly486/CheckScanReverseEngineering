package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class b26 implements du4 {
    public final /* synthetic */ vq0 a;
    public final /* synthetic */ c26 b;

    public b26(vq0 vq0Var, c26 c26Var) {
        this.a = vq0Var;
        this.b = c26Var;
    }

    @Override // yads.du4
    public final void b() {
        vq0 vq0Var = this.a;
        synchronized (vq0Var.E) {
            vq0Var.v.b(this);
        }
        this.b.c();
    }
}
