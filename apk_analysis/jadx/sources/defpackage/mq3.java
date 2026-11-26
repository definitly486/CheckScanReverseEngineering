package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.gift.repositories.GiftRepositoryImpl", f = "GiftRepositoryImpl.kt", l = {10}, m = "getGiftInfo")
public final class mq3 extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ nq3 m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mq3(nq3 nq3Var, f02 f02Var) {
        super(f02Var);
        this.m = nq3Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        return this.m.a(0, this);
    }
}
