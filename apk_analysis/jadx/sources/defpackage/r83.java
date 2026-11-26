package defpackage;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.auth.domain.useCases.FetchUserAgreementsUseCase", f = "FetchUserAgreementsUseCase.kt", l = {11}, m = "invoke")
public final class r83 extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ s83 m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r83(s83 s83Var, f02 f02Var) {
        super(f02Var);
        this.m = s83Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        return this.m.a(this);
    }
}
