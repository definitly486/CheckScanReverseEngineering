package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class rg3 implements du4 {
    public boolean a;
    public final /* synthetic */ sg3 b;

    public rg3(sg3 sg3Var) {
        this.b = sg3Var;
    }

    @Override // yads.du4
    public final void a() {
        this.b.b = true;
        this.a = false;
    }

    @Override // yads.du4
    public final void b() {
        sg3 sg3Var = this.b;
        sg3Var.b = false;
        if (this.a) {
            return;
        }
        sg3Var.a = null;
    }
}
