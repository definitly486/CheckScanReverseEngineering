package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.personalform.domain.interactor.PersonalFormInteractor", f = "PersonalFormInteractor.kt", l = {58}, m = "updateFields")
public final class a76 extends f02 {
    public boolean l;
    public xg5 m;
    public Object n;
    public /* synthetic */ Object o;
    public final /* synthetic */ w66 p;
    public int q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a76(w66 w66Var, f02 f02Var) {
        super(f02Var);
        this.p = w66Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.o = obj;
        this.q |= Integer.MIN_VALUE;
        return this.p.f(false, this);
    }
}
