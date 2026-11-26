package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.domain.interactor.sse.SSEInteractor$startListening$1", f = "SSEInteractor.kt", l = {}, m = "invokeSuspend")
public final class aa7 extends pg8 implements bm3<id3<? super ka7.a>, e02<? super j59>, Object> {
    public final /* synthetic */ da7 l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aa7(da7 da7Var, e02<? super aa7> e02Var) {
        super(2, e02Var);
        this.l = da7Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new aa7(this.l, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super ka7.a> id3Var, e02<? super j59> e02Var) {
        return ((aa7) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        this.l.a.b();
        return j59.a;
    }
}
