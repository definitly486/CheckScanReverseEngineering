package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.insuranceShowcase.data.respositories.InsuranceShowcaseRepositoryImpl", f = "InsuranceShowcaseRepositoryImpl.kt", l = {12}, m = "getInsuranceShowcase")
public final class m74 extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ n74 m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m74(n74 n74Var, f02 f02Var) {
        super(f02Var);
        this.m = n74Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        return this.m.a(this);
    }
}
