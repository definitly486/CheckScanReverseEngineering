package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.subscription.domain.interactors.SubscriptionInteractor", f = "SubscriptionInteractor.kt", l = {39}, m = "updateBadgeState")
public final class kc8 extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ ic8 m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kc8(ic8 ic8Var, f02 f02Var) {
        super(f02Var);
        this.m = ic8Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        return this.m.b(this);
    }
}
