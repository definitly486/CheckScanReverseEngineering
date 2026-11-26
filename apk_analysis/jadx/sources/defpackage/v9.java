package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class v9 extends gh4 implements nl3 {
    public static final v9 g;
    public static final v9 h;
    public final /* synthetic */ int f;

    static {
        int i = 1;
        g = new v9(i, 0);
        h = new v9(i, 1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ v9(int i, int i2) {
        super(i);
        this.f = i2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.f) {
            case 0:
                vl2 vl2Var = (vl2) obj;
                vl2Var.getClass();
                return vl2Var.a();
            default:
                y31 y31Var = (y31) obj;
                y31Var.getClass();
                return y31Var.a();
        }
    }
}
