package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.profile.data.repositories.ProfileRepositoryImpl", f = "ProfileRepositoryImpl.kt", l = {23, 24}, m = "fetchProfile")
public final class pm6 extends f02 {
    public rm6 l;
    public /* synthetic */ Object m;
    public final /* synthetic */ qm6 n;
    public int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pm6(qm6 qm6Var, f02 f02Var) {
        super(f02Var);
        this.n = qm6Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.m = obj;
        this.o |= Integer.MIN_VALUE;
        return this.n.a(this);
    }
}
