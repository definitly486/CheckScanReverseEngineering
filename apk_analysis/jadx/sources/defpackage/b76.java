package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.personalform.domain.interactor.PersonalFormInteractor", f = "PersonalFormInteractor.kt", l = {152}, m = "updateProfileCity")
public final class b76 extends f02 {
    public String l;
    public /* synthetic */ Object m;
    public final /* synthetic */ w66 n;
    public int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b76(w66 w66Var, f02 f02Var) {
        super(f02Var);
        this.n = w66Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.m = obj;
        this.o |= Integer.MIN_VALUE;
        return this.n.g(0, null, this);
    }
}
