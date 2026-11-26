package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class u5 extends gh4 implements nl3 {
    public static final u5 g;
    public static final u5 h;
    public final /* synthetic */ int f;

    static {
        int i = 1;
        g = new u5(i, 0);
        h = new u5(i, 1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ u5(int i, int i2) {
        super(i);
        this.f = i2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.f) {
            case 0:
                jp3 jp3Var = (jp3) obj;
                jp3Var.getClass();
                return Boolean.valueOf(jp3Var.a());
            default:
                a57 a57Var = (a57) obj;
                a57Var.getClass();
                z47 z47Var = a57Var.a;
                if (z47Var.o()) {
                    return aq1.b;
                }
                String str = z47Var.d;
                if (str == null) {
                    str = z47Var.e + ":Delete Receipt not successful";
                }
                return new bq1(new Exception(str));
        }
    }
}
