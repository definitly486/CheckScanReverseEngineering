package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.personalform.data.network.repositoryImpl.PersonalDataFormRepositoryImpl", f = "PersonalDataFormRepositoryImpl.kt", l = {20}, m = "updateProfileCity")
public final class g66 extends f02 {
    public int l;
    public String m;
    public /* synthetic */ Object n;
    public final /* synthetic */ h66 o;
    public int p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g66(h66 h66Var, f02 f02Var) {
        super(f02Var);
        this.o = h66Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.n = obj;
        this.p |= Integer.MIN_VALUE;
        return this.o.a(0, null, this);
    }
}
