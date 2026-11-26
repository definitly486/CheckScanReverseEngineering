package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class t31 extends yh1 {
    public final /* synthetic */ bo4 a;
    public final /* synthetic */ u31 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t31(vq0 vq0Var, bo4 bo4Var, u31 u31Var) {
        super(vq0Var);
        this.a = bo4Var;
        this.b = u31Var;
    }

    @Override // yads.ji1
    public final void a(uw uwVar) {
        bo4 bo4Var = this.a;
        u31 u31Var = this.b;
        bo4Var.a = u31Var.b.bottom;
        bo4Var.invalidateSelf();
        bo4Var.b = u31Var.b.left;
        bo4Var.invalidateSelf();
        bo4Var.c = u31Var.b.right;
        bo4Var.invalidateSelf();
        bo4Var.d = u31Var.b.top;
        bo4Var.invalidateSelf();
        bo4Var.a(uwVar.a);
    }
}
