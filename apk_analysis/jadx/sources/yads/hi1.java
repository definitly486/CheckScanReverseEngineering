package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class hi1 extends yh1 {
    public final /* synthetic */ yi1 a;
    public final /* synthetic */ ii1 b;
    public final /* synthetic */ tt c;
    public final /* synthetic */ zh1 d;
    public final /* synthetic */ fs2 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hi1(yi1 yi1Var, ii1 ii1Var, tt ttVar, zh1 zh1Var, fs2 fs2Var, vq0 vq0Var) {
        super(vq0Var);
        this.a = yi1Var;
        this.b = ii1Var;
        this.c = ttVar;
        this.d = zh1Var;
        this.e = fs2Var;
    }

    @Override // yads.ji1
    public final void a(uw uwVar) {
        this.a.setCurrentBitmapWithoutFilters$mobileads_externalRelease(uwVar.a);
        ii1 ii1Var = this.b;
        yi1 yi1Var = this.a;
        tt ttVar = this.c;
        List list = this.d.t;
        ii1Var.getClass();
        ii1.a(yi1Var, ttVar, list);
        ii1.a(this.b, this.a, this.d, this.e, uwVar.c);
        this.a.k();
        ii1 ii1Var2 = this.b;
        yi1 yi1Var2 = this.a;
        as2 as2Var = this.d.P;
        Integer num = as2Var != null ? (Integer) as2Var.a(this.e) : null;
        y41 y41Var = (y41) this.d.Q.a(this.e);
        ii1Var2.getClass();
        ii1.a(yi1Var2, num, y41Var);
        this.a.invalidate();
    }

    @Override // yads.ji1
    public final void a() {
        this.a.setImageUrl$mobileads_externalRelease(null);
    }
}
