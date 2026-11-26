package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.domain.interactor.balance.BalanceInteractor", f = "BalanceInteractor.kt", l = {349}, m = "fetchPromotions")
public final class n40 extends f02 {
    public String l;
    public kx2 m;
    public boolean n;
    public /* synthetic */ Object o;
    public final /* synthetic */ b40 p;
    public int q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n40(b40 b40Var, f02 f02Var) {
        super(f02Var);
        this.p = b40Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.o = obj;
        this.q |= Integer.MIN_VALUE;
        return this.p.k(null, false, this);
    }
}
