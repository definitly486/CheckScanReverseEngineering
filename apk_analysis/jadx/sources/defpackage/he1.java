package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class he1 extends gh4 implements nl3 {
    public static final he1 g = new he1(1);
    public final /* synthetic */ int f = 0;

    public /* synthetic */ he1(int i) {
        super(i);
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.f) {
            case 0:
                hc hcVar = (hc) obj;
                hcVar.getClass();
                int iA = hcVar.a();
                int iB = hcVar.b();
                return new gc(w65.b((iA / iB) * 100.0f), hcVar.d(), hcVar.a() + "/" + hcVar.b() + " " + hcVar.c(), iA == iB);
            default:
                d41 d41Var = (d41) obj;
                d41Var.getClass();
                b41 b41VarA = d41Var.a();
                String strC = d41Var.c();
                String strB = d41Var.b();
                Boolean boolE = d41Var.e();
                return new c41(b41VarA, strC, strB, boolE != null ? boolE.booleanValue() : true, !d41Var.d());
        }
    }

    public he1(ca0 ca0Var) {
        super(1);
    }
}
