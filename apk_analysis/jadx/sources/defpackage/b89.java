package defpackage;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.account.domain.useCases.UpdateUserFeaturesUseCase", f = "UpdateUserFeaturesUseCase.kt", l = {10}, m = "invoke")
public final class b89 extends f02 {
    public dc7 l;
    public /* synthetic */ Object m;
    public final /* synthetic */ c89 n;
    public int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b89(c89 c89Var, f02 f02Var) {
        super(f02Var);
        this.n = c89Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.m = obj;
        this.o |= Integer.MIN_VALUE;
        return this.n.a(this);
    }
}
