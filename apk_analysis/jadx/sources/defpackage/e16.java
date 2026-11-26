package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.device.data.repositoriesImpl.PackageManagerRepositoryImpl", f = "PackageManagerRepositoryImpl.kt", l = {23}, m = "getAppSchemes")
public final class e16 extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ f16 m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e16(f16 f16Var, f02 f02Var) {
        super(f02Var);
        this.m = f16Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        return this.m.b(this);
    }
}
