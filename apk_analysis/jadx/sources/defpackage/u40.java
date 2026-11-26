package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.domain.interactor.balance.BalanceInteractor", f = "BalanceInteractor.kt", l = {245}, m = "onHidePromoBanner")
public final class u40 extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ b40 m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u40(b40 b40Var, f02 f02Var) {
        super(f02Var);
        this.m = b40Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        return this.m.q(0, this);
    }
}
