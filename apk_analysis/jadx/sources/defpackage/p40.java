package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.domain.interactor.balance.BalanceInteractor", f = "BalanceInteractor.kt", l = {299}, m = "fetchTransferBlock")
public final class p40 extends f02 {
    public String l;
    public kx2 m;
    public /* synthetic */ Object n;
    public final /* synthetic */ b40 o;
    public int p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p40(b40 b40Var, f02 f02Var) {
        super(f02Var);
        this.o = b40Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.n = obj;
        this.p |= Integer.MIN_VALUE;
        return this.o.m(0L, null, false, this);
    }
}
