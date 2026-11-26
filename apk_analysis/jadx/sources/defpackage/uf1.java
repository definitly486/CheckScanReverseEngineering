package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class uf1 extends gh4 implements nl3 {
    public static final uf1 g;
    public static final uf1 h;
    public final /* synthetic */ int f;

    static {
        int i = 1;
        g = new uf1(i, 0);
        h = new uf1(i, 1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ uf1(int i, int i2) {
        super(i);
        this.f = i2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.f) {
            case 0:
                a57 a57Var = (a57) obj;
                a57Var.getClass();
                z47 z47Var = a57Var.a;
                return z47Var.o() ? aq1.b : new bq1(new Exception(z47Var.d));
            default:
                vl2 vl2Var = (vl2) obj;
                vl2Var.getClass();
                return vl2Var.a();
        }
    }
}
