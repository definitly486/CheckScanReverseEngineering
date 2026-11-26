package defpackage;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.bonuses.repositories.BonusBlocksRepositoryImpl", f = "BonusBlocksRepositoryImpl.kt", l = {57}, m = "fetchSubGroupsOnlineShops")
public final class xn0 extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ ao0 m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xn0(ao0 ao0Var, f02 f02Var) {
        super(f02Var);
        this.m = ao0Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        return this.m.l(0, 0, this);
    }
}
