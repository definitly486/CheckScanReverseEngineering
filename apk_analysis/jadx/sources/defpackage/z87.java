package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class z87 {
    public final /* synthetic */ o22 a;
    public final /* synthetic */ bm3 b;

    public /* synthetic */ z87(o22 o22Var, bm3 bm3Var) {
        this.a = o22Var;
        this.b = bm3Var;
    }

    public final void a(vp1.a aVar) {
        o22 o22VarA = q22.a(gx2.b, this.a, true);
        oi2 oi2Var = qo2.a;
        if (o22VarA != oi2Var && o22VarA.get(g02.a.b) == null) {
            o22VarA = o22VarA.plus(oi2Var);
        }
        a0 y87Var = new y87(o22VarA, aVar);
        ip2.f(aVar, new f31(new x87(y87Var)));
        y87Var.m0(c32.DEFAULT, y87Var, this.b);
    }
}
