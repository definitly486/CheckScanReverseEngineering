package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.domain.interactor.balance.BalanceInteractor", f = "BalanceInteractor.kt", l = {757}, m = "fetchHidableBanners")
public final class i40 extends f02 {
    public kx2 l;
    public /* synthetic */ Object m;
    public final /* synthetic */ b40 n;
    public int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i40(b40 b40Var, f02 f02Var) {
        super(f02Var);
        this.n = b40Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.m = obj;
        this.o |= Integer.MIN_VALUE;
        return this.n.f(this);
    }
}
