package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.personalform.domain.interactor.PersonalFormInteractor$saveForm$2", f = "PersonalFormInteractor.kt", l = {345}, m = "invokeSuspend")
public final class y66 extends pg8 implements dm3<id3<? super w66.a>, Throwable, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ id3 m;

    @Override // defpackage.dm3
    public final Object invoke(id3<? super w66.a> id3Var, Throwable th, e02<? super j59> e02Var) {
        y66 y66Var = new y66(3, e02Var);
        y66Var.m = id3Var;
        return y66Var.invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.l;
        if (i == 0) {
            r57.b(obj);
            id3 id3Var = this.m;
            this.l = 1;
            if (id3Var.emit(w66.a.C0347a.a, this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return j59.a;
    }
}
