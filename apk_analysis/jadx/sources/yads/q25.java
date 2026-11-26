package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class q25 implements v03 {
    public final u03 a;
    public final aw3 b;

    public q25(u03 u03Var) {
        ee5.a.getClass();
        aw3 aw3VarA = ng3.a();
        this.a = u03Var;
        this.b = aw3VarA;
    }

    public static final void a(q25 q25Var, j5 j5Var) {
        q25Var.getClass();
    }

    public static final void b(q25 q25Var) {
        q25Var.getClass();
    }

    public static final void c(q25 q25Var) {
        q25Var.getClass();
        u03 u03Var = q25Var.a;
        if (u03Var != null) {
            u03Var.onAdShown();
        }
    }

    @Override // yads.v03
    public final void onAdClicked() {
        this.b.a(new defpackage.oh(this, 3));
    }

    @Override // yads.v03
    public final void onAdDismissed() {
        this.b.a(new defpackage.xl(this, 7));
    }

    @Override // yads.v03
    public final void onAdShown() {
        this.b.a(new defpackage.ph(this, 5));
    }

    @Override // yads.v03
    public final void onImpression(j5 j5Var) {
        this.b.a(new defpackage.uu(3, this, j5Var));
    }

    public static final void a(q25 q25Var) {
        q25Var.getClass();
    }
}
