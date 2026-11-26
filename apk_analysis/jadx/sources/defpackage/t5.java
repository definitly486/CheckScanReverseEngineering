package defpackage;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.account.data.repositoriesImpl.AccountRepositoryImpl", f = "AccountRepositoryImpl.kt", l = {83}, m = "activatePromocode")
public final class t5 extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ f6 m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t5(f6 f6Var, f02 f02Var) {
        super(f02Var);
        this.m = f6Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        return this.m.a(null, null, this);
    }
}
