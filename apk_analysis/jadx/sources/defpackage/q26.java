package defpackage;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.core.ui.paginator.Paginator$5", f = "Paginator.kt", l = {}, m = "invokeSuspend")
public final class q26 extends pg8 implements dm3<id3<? super Integer>, Throwable, e02<? super j59>, Object> {
    public /* synthetic */ Throwable l;
    public final /* synthetic */ r26<pz3> m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q26(r26<pz3> r26Var, e02<? super q26> e02Var) {
        super(3, e02Var);
        this.m = r26Var;
    }

    @Override // defpackage.dm3
    public final Object invoke(id3<? super Integer> id3Var, Throwable th, e02<? super j59> e02Var) {
        q26 q26Var = new q26(this.m, e02Var);
        q26Var.l = th;
        return q26Var.invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        this.m.c.a(this.l);
        return j59.a;
    }
}
