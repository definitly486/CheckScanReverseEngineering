package defpackage;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.bankLanding.data.repositoryImpl.BankLandingRepositoryImpl", f = "BankLandingRepositoryImpl.kt", l = {12}, m = "getBankInfo")
public final class va0 extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ wa0 m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public va0(wa0 wa0Var, f02 f02Var) {
        super(f02Var);
        this.m = wa0Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        return this.m.a(0, this);
    }
}
