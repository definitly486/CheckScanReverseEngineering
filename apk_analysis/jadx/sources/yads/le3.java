package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class le3 extends g {
    public final oe3 d;

    public le3(oe3 oe3Var, int i) {
        super(oe3Var.size(), i);
        this.d = oe3Var;
    }

    @Override // yads.g
    public final Object a(int i) {
        return this.d.get(i);
    }
}
