package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.repositories.impl.cashback.CashBackRepositoryImpl", f = "CashBackRepositoryImpl.kt", l = {156}, m = "sendEventFloatingHide")
public final class a61 extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ d61 m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a61(d61 d61Var, f02 f02Var) {
        super(f02Var);
        this.m = d61Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        return this.m.k(0L, this);
    }
}
