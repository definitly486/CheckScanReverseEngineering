package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class sb4 extends br {
    public final jb4 b;

    public sb4(ls4 ls4Var, ha3 ha3Var, rd6 rd6Var, ia4 ia4Var, ja4 ja4Var, mq4 mq4Var) {
        wb4 wb4Var = new wb4(ha3Var);
        jb4 jb4Var = new jb4(ls4Var, null, 254);
        super(ls4Var);
        this.b = jb4Var;
        jb4Var.l = wb4Var;
        jb4Var.p = rd6Var;
        jb4Var.n = ia4Var;
        jb4Var.m = ja4Var;
        jb4Var.o = mq4Var;
    }

    @Override // yads.br
    public final void a(ha3 ha3Var) {
        this.a.setHtmlWebViewListener(new mb4(this.b));
    }

    @Override // yads.br
    public final void a(String str) {
        this.b.a(str);
    }
}
