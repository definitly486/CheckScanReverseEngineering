package defpackage;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.component.coroutines.ResultKt$asResult$3", f = "Result.kt", l = {16}, m = "invokeSuspend")
public final class q57 extends pg8 implements dm3<id3<? super i57<Object>>, Throwable, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ id3 m;
    public /* synthetic */ Throwable n;

    @Override // defpackage.dm3
    public final Object invoke(id3<? super i57<Object>> id3Var, Throwable th, e02<? super j59> e02Var) {
        q57 q57Var = new q57(3, e02Var);
        q57Var.m = id3Var;
        q57Var.n = th;
        return q57Var.invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.l;
        if (i == 0) {
            r57.b(obj);
            id3 id3Var = this.m;
            i57.a aVar = new i57.a(this.n);
            this.m = null;
            this.l = 1;
            if (id3Var.emit(aVar, this) == a32Var) {
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
