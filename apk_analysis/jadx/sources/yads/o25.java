package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class o25 implements v03 {
    public final u03 a;
    public final aw3 b;

    public o25(u03 u03Var) {
        ee5.a.getClass();
        aw3 aw3VarA = ng3.a();
        this.a = u03Var;
        this.b = aw3VarA;
    }

    public static final void a(o25 o25Var, j5 j5Var) {
        o25Var.getClass();
    }

    public static final void b(o25 o25Var) {
        o25Var.getClass();
    }

    public static final void c(o25 o25Var) {
        o25Var.getClass();
        u03 u03Var = o25Var.a;
        if (u03Var != null) {
            u03Var.onAdShown();
        }
    }

    @Override // yads.v03
    public final void onAdClicked() {
        this.b.a(new defpackage.lh(this, 5));
    }

    @Override // yads.v03
    public final void onAdDismissed() {
        this.b.a(new defpackage.oh5(this, 1));
    }

    @Override // yads.v03
    public final void onAdShown() {
        this.b.a(new defpackage.ed0(this, 5));
    }

    @Override // yads.v03
    public final void onImpression(j5 j5Var) {
        this.b.a(new defpackage.qh5(2, this, j5Var));
    }

    public static final void a(o25 o25Var) {
        o25Var.getClass();
    }
}
