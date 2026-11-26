package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.subscription.repositories.SubscriptionRepositoryImpl", f = "SubscriptionRepositoryImpl.kt", l = {13}, m = "fetchProfileBadge")
public final class uc8 extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ vc8 m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public uc8(vc8 vc8Var, f02 f02Var) {
        super(f02Var);
        this.m = vc8Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        return this.m.b(this);
    }
}
