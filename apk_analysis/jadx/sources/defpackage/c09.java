package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.repositories.impl.balance.TransferRepositoryImpl", f = "TransferRepositoryImpl.kt", l = {18}, m = "getTransferSBPInfo")
public final class c09 extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ d09 m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c09(d09 d09Var, f02 f02Var) {
        super(f02Var);
        this.m = d09Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        return this.m.e(this);
    }
}
