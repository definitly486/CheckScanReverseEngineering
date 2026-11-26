package defpackage;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.domain.interactor.sse.SSEInteractor$startListening$3", f = "SSEInteractor.kt", l = {}, m = "invokeSuspend")
public final class ca7 extends pg8 implements dm3<id3<? super ka7.a>, Throwable, e02<? super j59>, Object> {
    public /* synthetic */ Throwable l;

    @Override // defpackage.dm3
    public final Object invoke(id3<? super ka7.a> id3Var, Throwable th, e02<? super j59> e02Var) {
        ca7 ca7Var = new ca7(3, e02Var);
        ca7Var.l = th;
        return ca7Var.invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        this.l.getClass();
        return j59.a;
    }
}
