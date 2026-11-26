package defpackage;

import com.google.gson.Gson;

/* JADX INFO: loaded from: classes5.dex */
public final class iq0 extends gh4 implements nl3 {
    public static final iq0 g;
    public static final iq0 h;
    public final /* synthetic */ int f;

    static {
        int i = 1;
        g = new iq0(i, 0);
        h = new iq0(i, 1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ iq0(int i, int i2) {
        super(i);
        this.f = i2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.f) {
            case 0:
                j26 j26Var = (j26) obj;
                j26Var.getClass();
                return j26Var.a();
            default:
                kg1 kg1Var = (kg1) obj;
                kg1Var.getClass();
                return new b36(new Gson().f(kg1Var.d, new x39(hv6.class)), new Gson().f(kg1Var.e, new x39(iv6.class)));
        }
    }
}
