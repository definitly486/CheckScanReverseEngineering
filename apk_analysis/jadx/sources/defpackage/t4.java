package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class t4 extends gh4 implements nl3<a57<ba9>, qq1> {
    public final /* synthetic */ c4 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t4(c4 c4Var) {
        super(1);
        this.f = c4Var;
    }

    @Override // defpackage.nl3
    public final qq1 invoke(a57<ba9> a57Var) {
        Object value;
        a57<ba9> a57Var2 = a57Var;
        a57Var2.getClass();
        ba9 ba9Var = a57Var2.b;
        if (a57Var2.a.o() && ba9Var != null) {
            c4 c4Var = this.f;
            k5 k5Var = c4Var.n;
            jf6 jf6Var = c4Var.a;
            String strA = ba9Var.a();
            if (strA == null) {
                strA = "";
            }
            k5Var.setAvatar(strA);
            jf6Var.N0(ba9Var.o());
            jf6Var.w(ba9Var.c());
            jf6Var.D0(ba9Var.i());
            String strM = ba9Var.m();
            if (strM == null) {
                strM = "";
            }
            jf6Var.E0(strM);
            String strA2 = ba9Var.a();
            if (strA2 == null) {
                strA2 = "";
            }
            jf6Var.w0(strA2);
            String strB = ba9Var.b();
            if (strB == null) {
                strB = "";
            }
            jf6Var.H(strB);
            String strH = ba9Var.h();
            if (strH == null) {
                strH = "";
            }
            jf6Var.a1(strH);
            Boolean boolN = ba9Var.n();
            jf6Var.C(boolN != null ? boolN.booleanValue() : false);
            d82 d82Var = c4Var.m;
            boolean zL1 = jf6Var.l1();
            z68 z68Var = d82Var.f;
            do {
                value = z68Var.getValue();
                ((Boolean) value).getClass();
            } while (!z68Var.a(value, Boolean.valueOf(zL1)));
            String strF = ba9Var.f();
            if (strF == null) {
                strF = "";
            }
            jf6Var.y(strF);
            jf6Var.a(ba9Var.d().a());
            jf6Var.j0(ba9Var.p());
            String strJ = ba9Var.j();
            jf6Var.n(strJ != null ? strJ : "");
            c4Var.e.g(ba9Var.o());
            String strE = ba9Var.e();
            if (strE != null) {
                jf6Var.I(strE);
            }
            String strG = ba9Var.g();
            if (strG != null) {
                jf6Var.z0(strG);
            }
            ba9.c cVarK = ba9Var.k();
            jf6Var.e(cVarK != null ? ht3.c().j(cVarK) : new String());
        }
        return aq1.b;
    }
}
