package defpackage;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.auth.data.network.repositoryImpl.AuthRepositoryImpl", f = "AuthRepositoryImpl.kt", l = {77}, m = "signInConfirm")
public final class ax extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ dx m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ax(dx dxVar, f02 f02Var) {
        super(f02Var);
        this.m = dxVar;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        return this.m.a(null, null, null, this);
    }
}
