package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.features.games.domain.useCases.LoadGamesBannerUseCase", f = "LoadGamesBannerUseCase.kt", l = {11}, m = "invoke")
public final class es4 extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ fs4 m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public es4(fs4 fs4Var, f02 f02Var) {
        super(f02Var);
        this.m = fs4Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        return this.m.a(this);
    }
}
