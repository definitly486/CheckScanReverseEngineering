package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class tg1 extends gh4 implements nl3<b36<? extends hv6, ? extends iv6>, qq1> {
    public final /* synthetic */ yg1 f;
    public final /* synthetic */ int g;
    public final /* synthetic */ String h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tg1(yg1 yg1Var, int i, String str) {
        super(1);
        this.f = yg1Var;
        this.g = i;
        this.h = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.nl3
    public final qq1 invoke(b36<? extends hv6, ? extends iv6> b36Var) {
        b36<? extends hv6, ? extends iv6> b36Var2 = b36Var;
        b36Var2.getClass();
        hv6 hv6Var = (hv6) b36Var2.b;
        long j = this.g;
        String str = this.h;
        yg1 yg1Var = this.f;
        return yg1Var.e(j, hv6Var, new sg1(yg1Var, hv6Var, str));
    }
}
