package defpackage;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.component.coroutines.ResultKt$asResult$2", f = "Result.kt", l = {15}, m = "invokeSuspend")
public final class p57 extends pg8 implements bm3<id3<? super i57<Object>>, e02<? super j59>, Object> {
    public int l;
    public /* synthetic */ Object m;

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        p57 p57Var = new p57(2, e02Var);
        p57Var.m = obj;
        return p57Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(id3<? super i57<Object>> id3Var, e02<? super j59> e02Var) {
        return ((p57) create(id3Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.l;
        if (i == 0) {
            r57.b(obj);
            id3 id3Var = (id3) this.m;
            this.l = 1;
            if (id3Var.emit(i57.b.a, this) == a32Var) {
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
