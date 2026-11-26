package defpackage;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.account.domain.useCases.UpdateAccountInfoUseCase", f = "UpdateAccountInfoUseCase.kt", l = {14}, m = "invoke")
public final class p79 extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ q79 m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p79(q79 q79Var, f02 f02Var) {
        super(f02Var);
        this.m = q79Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        return this.m.a(this);
    }
}
