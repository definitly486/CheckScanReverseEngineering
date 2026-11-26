package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.personalform.domain.interactor.PersonalFormInteractor", f = "PersonalFormInteractor.kt", l = {358}, m = "updateScreen")
public final class c76 extends f02 {
    public /* synthetic */ Object l;
    public final /* synthetic */ w66 m;
    public int n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c76(w66 w66Var, f02 f02Var) {
        super(f02Var);
        this.m = w66Var;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.l = obj;
        this.n |= Integer.MIN_VALUE;
        return this.m.h(false, this);
    }
}
