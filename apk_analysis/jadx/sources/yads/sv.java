package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class sv extends r75 {
    public final ty2 s;

    public sv(String str, ty2 ty2Var, uy2 uy2Var) {
        super(0, str, uy2Var);
        this.s = ty2Var;
    }

    @Override // yads.r75
    public final z85 a(en4 en4Var) {
        try {
            return new z85(en4Var.b, pa3.a(en4Var));
        } catch (Exception e) {
            return new z85(new hi6(e));
        }
    }

    @Override // yads.r75
    public final void a(Object obj) {
        this.s.a((byte[]) obj);
    }
}
