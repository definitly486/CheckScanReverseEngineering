package defpackage;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.auth.domain.useCases.ObserveCallVerifiedUseCase$invoke$1", f = "ObserveCallVerifiedUseCase.kt", l = {}, m = "invokeSuspend")
public final class fs5 extends pg8 implements bm3<id3<? super ka7.a>, e02<? super j59>, Object> {
    public final /* synthetic */ gs5 l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fs5(gs5 gs5Var, e02<? super fs5> e02Var) {
        super(2, e02Var);
        this.l = gs5Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new fs5(this.l, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super ka7.a> id3Var, e02<? super j59> e02Var) {
        return ((fs5) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        this.l.a.a();
        return j59.a;
    }
}
